from config import settings
import httpx
from queries.mandi_price import get_crop_by_name,get_mandi_by_name,insert_mandi_price
from schemas.mandi_price import MandiInfo
from queries.crop_mandi import create_crop
from schemas.mandi import MandiCreate


RESOURCE_ID = "9ef84268-d588-465a-a308-a864a43d0070"

BASE_URL = f"https://api.data.gov.in/resource/{RESOURCE_ID}"

API_KEY = settings.DATA_GOV_API_KEY

REQUEST_TIMEOUT = 30


async def fetch_maharashtra_prices():

    records = []
    offset = 0
    limit = 1000

    async with httpx.AsyncClient() as client:

        while True:

            response = await client.get(
                BASE_URL,
                params={
                    "api-key": API_KEY,
                    "format": "json",
                    "offset": offset,
                    "limit": limit,
                    "filters[state]": "Maharashtra",
                },
                timeout=REQUEST_TIMEOUT,
                headers={
                    "User-Agent": "Maharashtra-Mandi-Prices/1.0"
                }
            )

            response.raise_for_status()

            payload = response.json()

            page = payload.get("records", [])

            records.extend(page)

            total = int(payload.get("total", len(records)))

            offset += limit

            if not page or offset >= total:
                return records


async def latest_mandi_price(conn):
    records = await fetch_maharashtra_prices()
    if not records:
        return {"processed": 0, "stored": 0}

    processed = 0
    stored = 0
    skipped_unmatched_mandi = 0

    for record in records:
        try:
            mandi_info = MandiInfo(**record)
            processed += 1

            market_check = await get_mandi_by_name(conn, mandi_info.market)
            if market_check is None:
                skipped_unmatched_mandi += 1
                continue  

            crop_check = await get_crop_by_name(conn, mandi_info.commodity)
            if crop_check is None:
                crop_check = await create_crop(conn, mandi_info.commodity)

            await insert_mandi_price(
                conn, crop_check["crop_id"], market_check["mandi_id"],
                mandi_info.arrival_date, mandi_info.min_price,
                mandi_info.max_price, mandi_info.modal_price, arrival_volume=None
            )
            stored += 1

        except Exception as e:
            print(f"SKIPPED record — {e}")
            continue

    return {"processed": processed, "stored": stored, "skipped_unmatched_mandi": skipped_unmatched_mandi}