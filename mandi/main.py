import json
import math
import os
import threading
import time
from pathlib import Path

import requests

try:
    import psycopg
except ImportError:
    psycopg = None
from fastapi import FastAPI, HTTPException, Query
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles

# Get a free key from https://data.gov.in (Profile -> Generate API Key).
API_KEY = os.environ.get("DATA_GOV_API_KEY", "579b464db66ec23bdd0000017a41d49a05e44c4a73d473ec2e2c43fa")
RESOURCE_ID = "9ef84268-d588-465a-a308-a864a43d0070"
BASE_URL = f"https://api.data.gov.in/resource/{RESOURCE_ID}"
CACHE_SECONDS = 15 * 60
REQUEST_TIMEOUT = 20
VERIFY_SSL = os.environ.get("DATA_GOV_VERIFY_SSL", "true").lower() != "false"
DATABASE_URL = os.environ.get(
    "DATABASE_URL",
    "postgresql://postgres@localhost:5432/mandi",
)

# Hard-coded Maharashtra district/HQ coordinates.
# These are stable district-level fallback pins, not exact APMC locations.
MAHARASHTRA_DISTRICT_COORDS = {
    # Konkan
    "mumbai": (19.0760, 72.8777),
    "mumbai city": (19.0760, 72.8777),
    "mumbai suburban": (19.0760, 72.8777),
    "thane": (19.2183, 72.9781),
    "palghar": (19.6967, 72.7653),
    "raigad": (18.6414, 72.8722),
    "ratnagiri": (16.9902, 73.3120),
    "sindhudurg": (16.1288, 73.6848),

    # Pune
    "pune": (18.5204, 73.8567),
    "satara": (17.6805, 74.0183),
    "sangli": (16.8524, 74.5815),
    "solapur": (17.6599, 75.9064),
    "kolhapur": (16.7050, 74.2433),

    # Nashik
    "nashik": (19.9975, 73.7898),
    "dhule": (20.9042, 74.7749),
    "nandurbar": (21.3655, 74.2400),
    "jalgaon": (21.0077, 75.5626),
    "ahilyanagar": (19.0952, 74.7496),
    "ahmednagar": (19.0952, 74.7496),

    # Chhatrapati Sambhajinagar / Marathwada
    "chhatrapati sambhajinagar": (19.8762, 75.3433),
    "chattrapati sambhajinagar": (19.8762, 75.3433),
    "aurangabad": (19.8762, 75.3433),
    "jalna": (19.8347, 75.8816),
    "beed": (18.9891, 75.7601),
    "latur": (18.4088, 76.5604),
    "dharashiv": (18.1860, 76.0419),
    "osmanabad": (18.1860, 76.0419),
    "nanded": (19.1383, 77.3210),
    "parbhani": (19.2600, 76.7767),
    "hingoli": (19.7150, 77.1548),

    # Amravati
    "amravati": (20.9374, 77.7796),
    "amarawati": (20.9374, 77.7796),
    "akola": (20.7002, 77.0082),
    "washim": (20.1110, 77.1330),
    "buldhana": (20.5293, 76.1840),
    "yavatmal": (20.3899, 78.1307),

    # Nagpur
    "nagpur": (21.1458, 79.0882),
    "wardha": (20.7453, 78.6022),
    "bhandara": (21.1700, 79.6500),
    "gondia": (21.4624, 80.2210),
    "chandrapur": (19.9615, 79.2961),
    "gadchiroli": (20.1809, 80.0020),
}

# Spellings/aliases present in the data.gov.in mandi dataset.
DISTRICT_ALIASES = {
    "chattrapati sambhajinagar": "chhatrapati sambhajinagar",
    "amarawati": "amravati",
    "ahmednagar": "ahilyanagar",
    "aurangabad": "chhatrapati sambhajinagar",
    "osmanabad": "dharashiv",
}


def normalize_text(value):
    """Normalize text for case-insensitive crop/market comparisons."""
    return " ".join(str(value or "").strip().lower().split())


def normalize_district(district):
    value = normalize_text(district)
    return DISTRICT_ALIASES.get(value, value)


def district_display_name(district):
    normalized = normalize_district(district)
    for name in MAHARASHTRA_DISTRICT_COORDS:
        if normalize_district(name) == normalized:
            return name.title()
    return str(district or "").strip()


def haversine_km(lat1, lon1, lat2, lon2):
    radius = 6371.0088
    p1 = math.radians(lat1)
    p2 = math.radians(lat2)
    dp = math.radians(lat2 - lat1)
    dl = math.radians(lon2 - lon1)

    a = (
        math.sin(dp / 2) ** 2
        + math.cos(p1) * math.cos(p2) * math.sin(dl / 2) ** 2
    )
    return radius * 2 * math.asin(math.sqrt(a))


BASE_DIR = Path(__file__).resolve().parent
CACHE_FILE = BASE_DIR / "mandi_cache.json"
_cache = {"data": [], "fetched_at": 0, "error": None, "database_error": None, "loading": False}
_lock = threading.Lock()

app = FastAPI()


def load_saved_cache():
    """Show the last successful data if the government API is temporarily down."""
    if not CACHE_FILE.exists():
        return
    try:
        saved = json.loads(CACHE_FILE.read_text(encoding="utf-8"))
        _cache["data"] = saved["records"]
        _cache["fetched_at"] = saved["last_updated"]
    except (OSError, ValueError, KeyError):
        pass


def save_cache():
    CACHE_FILE.write_text(json.dumps({
        "records": _cache["data"],
        "last_updated": _cache["fetched_at"],
    }), encoding="utf-8")


def init_database():
    """Create the tables used by this app, if PostgreSQL is configured."""
    if not DATABASE_URL:
        return
    if psycopg is None:
        raise RuntimeError("Install requirements.txt before using PostgreSQL.")
    with psycopg.connect(DATABASE_URL) as connection:
        with connection.cursor() as cursor:
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS mandi_prices (
                    state TEXT NOT NULL,
                    district TEXT NOT NULL DEFAULT '',
                    market TEXT NOT NULL,
                    commodity TEXT NOT NULL,
                    variety TEXT NOT NULL DEFAULT '',
                    grade TEXT NOT NULL DEFAULT '',
                    arrival_date TEXT NOT NULL,
                    min_price NUMERIC,
                    max_price NUMERIC,
                    modal_price NUMERIC,
                    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                    PRIMARY KEY (state, district, market, commodity, variety, grade, arrival_date)
                )
            """)
            # Stable district-level coordinates used as the fallback/source
            # for mandi locations. These are stored in PostgreSQL so the
            # application can retrieve them whenever needed.
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS district_locations (
                    state TEXT NOT NULL,
                    district TEXT PRIMARY KEY,
                    latitude DOUBLE PRECISION NOT NULL,
                    longitude DOUBLE PRECISION NOT NULL
                )
            """)

            district_rows = [
                ("Maharashtra", district, lat, lon)
                for district, (lat, lon) in MAHARASHTRA_DISTRICT_COORDS.items()
                if district not in DISTRICT_ALIASES
            ]
            cursor.executemany("""
                INSERT INTO district_locations (state, district, latitude, longitude)
                VALUES (%s, %s, %s, %s)
                ON CONFLICT (district) DO UPDATE SET
                    state = EXCLUDED.state,
                    latitude = EXCLUDED.latitude,
                    longitude = EXCLUDED.longitude
            """, district_rows)

            # One row per physical mandi. A mandi's location never changes,
            # so this is the table that lets us geocode each one only once.
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS mandi_locations (
                    state TEXT NOT NULL,
                    district TEXT NOT NULL DEFAULT '',
                    market TEXT NOT NULL,
                    latitude DOUBLE PRECISION,
                    longitude DOUBLE PRECISION,
                    geocoded_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                    PRIMARY KEY (state, district, market)
                )
            """)


def save_to_database(records):
    """Insert new rows; update prices when the same daily record changes."""
    if not DATABASE_URL:
        return
    if psycopg is None:
        raise RuntimeError("Install requirements.txt before using PostgreSQL.")
    rows = [(
        record.get("state", ""), record.get("district", ""), record.get("market", ""),
        record.get("commodity", ""), record.get("variety", ""), record.get("grade", ""),
        record.get("arrival_date", ""), record.get("min_price"), record.get("max_price"),
        record.get("modal_price"),
    ) for record in records]
    if not rows:
        return
    with psycopg.connect(DATABASE_URL) as connection:
        with connection.cursor() as cursor:
            cursor.executemany("""
                INSERT INTO mandi_prices (
                    state, district, market, commodity, variety, grade, arrival_date,
                    min_price, max_price, modal_price
                ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                ON CONFLICT (state, district, market, commodity, variety, grade, arrival_date)
                DO UPDATE SET
                    min_price = EXCLUDED.min_price,
                    max_price = EXCLUDED.max_price,
                    modal_price = EXCLUDED.modal_price,
                    updated_at = NOW()
            """, rows)


def get_district_coordinates(connection, state, district):
    """Retrieve district coordinates from PostgreSQL."""
    normalized = normalize_district(district)

    with connection.cursor() as cursor:
        cursor.execute("""
            SELECT latitude, longitude
            FROM district_locations
            WHERE state = %s AND district = %s
        """, (state, normalized))
        row = cursor.fetchone()

    if row:
        return float(row[0]), float(row[1])

    return None, None


def geocode_market(connection, state, district, market):
    """
    Get a mandi's coordinates from the PostgreSQL district coordinate table.
    The stored coordinates represent the district/HQ area unless an exact
    mandi coordinate is added later.
    """
    return get_district_coordinates(connection, state, district)


def geocode_missing_markets(records):
    """
    For every mandi seen in `records`, assign district-level coordinates.
    Existing rows with NULL coordinates are retried and repaired.
    """
    if not DATABASE_URL or psycopg is None or not records:
        return

    # Every distinct mandi mentioned in this batch of price records.
    seen = {
        (r.get("state", ""), r.get("district", ""), r.get("market", ""))
        for r in records
        if r.get("market")
    }
    if not seen:
        return

    with psycopg.connect(DATABASE_URL) as connection:
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT state, district, market
                FROM mandi_locations
                WHERE latitude IS NOT NULL AND longitude IS NOT NULL
            """)
            already_have = set(cursor.fetchall())

        to_geocode = sorted(seen - already_have)
        if not to_geocode:
            return

        for state, district, market in to_geocode:
            lat, lon = geocode_market(connection, state, district, market)
            with connection.cursor() as cursor:
                cursor.execute("""
                    INSERT INTO mandi_locations (
                        state, district, market, latitude, longitude
                    )
                    VALUES (%s, %s, %s, %s, %s)
                    ON CONFLICT (state, district, market)
                    DO UPDATE SET
                        latitude = EXCLUDED.latitude,
                        longitude = EXCLUDED.longitude,
                        geocoded_at = NOW()
                """, (state, district, market, lat, lon))
            connection.commit()


def fetch_maharashtra_prices():
    """Pull every Maharashtra record from the official data.gov.in dataset."""
    records = []
    offset = 0
    limit = 1000

    while True:
        response = requests.get(
            BASE_URL,
            params={
                "api-key": API_KEY, "format": "json", "offset": offset,
                "limit": limit, "filters[state]": "Maharashtra",
            },
            timeout=REQUEST_TIMEOUT,
            verify=VERIFY_SSL,
            headers={"User-Agent": "Maharashtra-Mandi-Prices/1.0"},
        )
        response.raise_for_status()
        payload = response.json()
        page = payload.get("records", [])
        records.extend(page)
        total = int(payload.get("total", len(records)))
        offset += limit
        if not page or offset >= total:
            return records


def refresh_in_background():
    """Fetch without making the browser wait on a slow or broken connection."""
    with _lock:
        if _cache["loading"]:
            return
        _cache["loading"] = True

    def work():
        try:
            fresh_data = fetch_maharashtra_prices()
            with _lock:
                _cache["data"] = fresh_data
                _cache["fetched_at"] = time.time()
                _cache["error"] = None
                save_cache()
            try:
                save_to_database(fresh_data)
                _cache["database_error"] = None
            except Exception as error:
                _cache["database_error"] = str(error)
            # Geocode any mandi we haven't seen before. Cheap no-op once
            # your database already has every mandi that's actively reporting.
            try:
                geocode_missing_markets(fresh_data)
            except Exception as error:
                _cache["database_error"] = str(error)
        except (requests.RequestException, ValueError) as error:
            with _lock:
                _cache["error"] = str(error)
        finally:
            with _lock:
                _cache["loading"] = False

    threading.Thread(target=work, daemon=True).start()


def refresh_if_needed():
    if _cache["loading"] or time.time() - _cache["fetched_at"] <= CACHE_SECONDS:
        return
    refresh_in_background()


@app.on_event("startup")
def startup():
    load_saved_cache()
    init_database()
    if _cache["data"]:
        try:
            save_to_database(_cache["data"])
        except Exception as error:
            _cache["database_error"] = str(error)
        try:
            geocode_missing_markets(_cache["data"])
        except Exception as error:
            _cache["database_error"] = str(error)
    refresh_if_needed()



def date_sort_value(value):
    """Sort government dates written as DD/MM/YYYY safely."""
    try:
        day, month, year = str(value or "").split("/")
        return (int(year), int(month), int(day))
    except (ValueError, TypeError):
        return (0, 0, 0)


def latest_crop_market_records(crop=None):
    """Get the latest available record for each market/district."""
    wanted = normalize_text(crop) if crop else None
    latest = {}

    for record in _cache["data"]:
        market = str(record.get("market") or "").strip()
        district = str(record.get("district") or "").strip()
        commodity = str(record.get("commodity") or "").strip()

        if not market or not district or not commodity:
            continue

        if wanted and normalize_text(commodity) != wanted:
            continue

        key = (normalize_district(district), normalize_text(market))
        old = latest.get(key)

        if old is None or date_sort_value(record.get("arrival_date")) > date_sort_value(old.get("arrival_date")):
            latest[key] = record

    return list(latest.values())


def postgres_district_coordinates():
    """Read district coordinates from PostgreSQL."""
    if not DATABASE_URL or psycopg is None:
        return {}

    try:
        with psycopg.connect(DATABASE_URL) as connection:
            with connection.cursor() as cursor:
                cursor.execute(
                    "SELECT district, latitude, longitude FROM district_locations"
                )
                return {
                    normalize_district(row[0]): (float(row[1]), float(row[2]))
                    for row in cursor.fetchall()
                }
    except Exception as error:
        _cache["database_error"] = str(error)
        return {}


def market_results(origin_district, radius_km, crop=None):
    origin = normalize_district(origin_district)
    fallback_coords = MAHARASHTRA_DISTRICT_COORDS.get(origin)

    if not fallback_coords:
        raise HTTPException(
            status_code=400,
            detail=f"Unknown Maharashtra district: {origin_district}",
        )

    coords = MAHARASHTRA_DISTRICT_COORDS.copy()
    coords.update(postgres_district_coordinates())

    origin_lat, origin_lon = coords[origin]
    records = latest_crop_market_records(crop)
    results = []

    for record in records:
        district = normalize_district(record.get("district"))
        market = str(record.get("market") or "").strip()
        point = coords.get(district)

        if not point or not market:
            continue

        distance = haversine_km(
            origin_lat, origin_lon, point[0], point[1]
        )

        if distance <= radius_km:
            results.append(
                {
                    "market": market,
                    "district": district_display_name(district),
                    "distance_km": round(distance, 1),
                    "distance_type": "approx. district distance",
                    "commodity": record.get("commodity", ""),
                    "min_price": record.get("min_price"),
                    "max_price": record.get("max_price"),
                    "modal_price": record.get("modal_price"),
                    "arrival_date": record.get("arrival_date", ""),
                }
            )

    results.sort(key=lambda x: (x["distance_km"], x["market"].lower()))
    return results


@app.get("/api/districts")
def api_districts():
    return {
        "districts": sorted(
            [name.title() for name in MAHARASHTRA_DISTRICT_COORDS],
            key=str.lower,
        )
    }


@app.get("/api/crops")
def api_crops():
    refresh_if_needed()
    crops = sorted(
        {
            str(r.get("commodity") or "").strip()
            for r in _cache["data"]
            if str(r.get("commodity") or "").strip()
        },
        key=str.lower,
    )
    return {"crops": crops}


@app.get("/api/nearby-markets")
def api_nearby_markets(
    district: str = Query(..., min_length=1),
    radius_km: float = Query(100, gt=0, le=1000),
    crop: str | None = Query(None),
):
    refresh_if_needed()
    try:
        markets = market_results(district, radius_km, crop)
    except HTTPException:
        raise
    except Exception as error:
        raise HTTPException(
            status_code=500,
            detail=f"Nearby market calculation failed: {error}",
        )
    return {
        "origin_district": district_display_name(district),
        "radius_km": radius_km,
        "crop": crop,
        "count": len(markets),
        "distance_note": (
            "Distance is an approximate straight-line distance between "
            "district representative points, not road distance or exact APMC distance."
        ),
        "markets": markets,
    }


@app.get("/api/best-markets")
def api_best_markets(
    district: str = Query(..., min_length=1),
    radius_km: float = Query(100, gt=0, le=1000),
    crop: str = Query(..., min_length=1),
):
    refresh_if_needed()
    try:
        markets = [
            m for m in market_results(district, radius_km, crop)
            if m["modal_price"] is not None
        ]
    except HTTPException:
        raise
    except Exception as error:
        raise HTTPException(
            status_code=500,
            detail=f"Best-market calculation failed: {error}",
        )
    markets.sort(key=lambda x: float(x["modal_price"]), reverse=True)

    for rank, market in enumerate(markets, 1):
        market["rank"] = rank

    return {
        "origin_district": district_display_name(district),
        "radius_km": radius_km,
        "crop": crop,
        "count": len(markets),
        "note": (
            "Best price means the highest latest modal price in the selected "
            "approximate distance range. Transport costs are not deducted."
        ),
        "markets": markets,
    }


@app.get("/api/mandis")
def api_mandis():
    refresh_if_needed()
    if not _cache["data"] and _cache["error"]:
        raise HTTPException(status_code=503, detail="Could not reach data.gov.in. " + _cache["error"])
    records = [dict(row) for row in _cache["data"]]

    if DATABASE_URL and psycopg is not None and records:
        try:
            with psycopg.connect(DATABASE_URL) as connection:
                with connection.cursor() as cursor:
                    cursor.execute("""
                        SELECT state, district, latitude, longitude
                        FROM district_locations
                    """)
                    district_locations = {
                        (row[0], row[1]): (row[2], row[3])
                        for row in cursor.fetchall()
                    }

            for record in records:
                state = record.get("state", "")
                district = normalize_district(record.get("district", ""))
                latitude, longitude = district_locations.get(
                    (state, district), (None, None)
                )
                record["latitude"] = latitude
                record["longitude"] = longitude
                record["coordinates"] = (
                    f"{latitude:.6f}, {longitude:.6f}"
                    if latitude is not None and longitude is not None
                    else None
                )
        except Exception as error:
            _cache["database_error"] = str(error)

    return {
        "count": len(records), "last_updated": _cache["fetched_at"] or None,
        "loading": _cache["loading"], "error": _cache["error"],
        "database_error": _cache["database_error"], "records": records,
    }


@app.get("/")
def home():
    return FileResponse(BASE_DIR / "static" / "index.html")


app.mount("/static", StaticFiles(directory=BASE_DIR / "static"), name="static")
