from datetime import date
async def get_mandi_by_name(conn,mandi_name:str):
    return await conn.fetchrow(
       "SELECT * FROM mandis WHERE LOWER(TRIM(mandi_name)) = LOWER(TRIM($1))",
       mandi_name,
    )

async def get_crop_by_name(conn,crop_name:str):
    return await conn.fetchrow(
        "SELECT * FROM crop WHERE crop_name = $1",crop_name
    )

async def insert_mandi_price(conn,crop_id:int,mandi_id:int,price_date:date,min_price:float,max_price:float,modal_price:float,arrival_volume:float | None = None):
    return await conn.fetchrow(
        """INSERT INTO mandi_price(mandi_id,crop_id,price_date,min_price,max_price,modal_price,arrival_volume)
        VALUES($1,$2,$3,$4,$5,$6,$7)
        ON CONFLICT(mandi_id,crop_id,price_date)
        DO UPDATE SET
        min_price=EXCLUDED.min_price,
        max_price=EXCLUDED.max_price,
        modal_price=EXCLUDED.modal_price,
        arrival_volume=EXCLUDED.arrival_volume
        RETURNING * """,mandi_id,crop_id,price_date,min_price,max_price,modal_price,arrival_volume
    )