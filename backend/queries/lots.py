from datetime import date
async def create_lot(conn,farmer_id:int,crop_id:int,quantity:float,unit:str,harvest_date:date,expected_price:float):
    return await conn.fetchrow(
        """INSERT INTO lots(farmer_id,crop_id,quantity,unit,harvest_date,expected_price)
        VALUES($1,$2,$3,$4,$5,$6)
        RETURNING *""",farmer_id,crop_id,quantity,unit,harvest_date,expected_price
    )

async def get_lot_by_id(conn,lot_id:int):
    return await conn.fetchrow(
        "SELECT * FROM lots where lot_id=$1",lot_id
    )

async def get_lots_by_farmer(conn,farmer_id:int,limit:int,offset:int):
    return await conn.fetch(
        """SELECT * FROM lots where farmer_id=$1
        ORDER BY created_at DESC
        LIMIT $2
        OFFSET $3""",farmer_id,limit,offset
    )

async def get_crop_by_id(conn,crop_id:int):
    return await conn.fetchrow(
        "SELECT * FROM crop where crop_id=$1",crop_id
    )