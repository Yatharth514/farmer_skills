from queries.lots import create_lot,get_crop_by_id,get_lots_by_farmer
from fastapi import HTTPException
from schemas.lot import LotCreate

async def creation_of_lot(conn,farmer_id:int,lot:LotCreate):
    row=await get_crop_by_id(conn,lot.crop_id)
    if row is None:
        raise HTTPException(status_code=400,detail="Crop does not exist")
    new_lot=await create_lot(conn,farmer_id,lot.crop_id,lot.quantity,lot.unit,lot.harvest_date,lot.expected_price)
    return new_lot

async def get_all_lots(conn,farmer_id:int,page:int,limit:int):
    offset=(page-1)*limit
    existing_lots=await get_lots_by_farmer(conn,farmer_id,limit,offset)
    all_lots=[]
    for lot in existing_lots:
        all_lots.append(dict(lot))

    return all_lots


