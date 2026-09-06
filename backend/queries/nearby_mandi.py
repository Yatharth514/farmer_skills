async def get_nearby_query(conn,farmer_latitude:float,farmer_longitude:float,max_distance:int,limit:int,offset:int):
    return await conn.fetch(
        """WITH nearby AS
        (SELECT
            mandi_id,
            mandi_name,
            district,
            (point(longitude,latitude)<@>point($2,$1))* 1.60934 AS distance_km
            FROM mandis
            )
            SELECT * FROM nearby
            WHERE distance_km <= $3
            ORDER BY distance_km ASC
            LIMIT $4
            OFFSET $5""",farmer_latitude,farmer_longitude,max_distance,limit,offset
    )
async def get_nearby_mandis_for_comparison(conn,farmer_latitude:float,farmer_longitude:float,max_distance:int):
    return await conn.fetch(
            """WITH nearby AS
            (SELECT
                mandi_id,
                mandi_name,
                district,
                (point(longitude,latitude)<@>point($2,$1))* 1.60934 AS distance_km
                FROM mandis
                )
                SELECT * FROM nearby
                WHERE distance_km <= $3
                ORDER BY distance_km ASC
                """,farmer_latitude,farmer_longitude,max_distance
        )
async def filter_with_crop(conn,crop_id:int,mandi_id:int):
    return await conn.fetchrow(
        "SELECT mandi_id,crop_id,price_date,modal_price FROM mandi_price WHERE crop_id = $1 AND mandi_id = $2 ORDER BY price_date DESC LIMIT 1",crop_id,mandi_id
    )
