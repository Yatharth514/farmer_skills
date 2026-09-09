from fastapi import HTTPException
from config import settings
from queries.lots import get_lot_by_id
from utils.distance_cakc import calculate_distance
from queries.transaction import get_transaction_detail
from queries.logistic import pull_logistic_req,check_the_log_req


async def request_the_log(conn,lot_id:int,farmer_id:int):
    
    row=await get_lot_by_id(conn,lot_id)
    if row is None:
        raise HTTPException(status_code=404,detail="Lot not found")
    if row["farmer_id"]!=farmer_id:
        raise HTTPException(status_code=403,detail="Not authorized")
    if row["lot_status"]!="SOLD":
        raise HTTPException(status_code=409,detail="Lot is not sold yet")
    check=await check_the_log_req(conn,lot_id)
    if check is not None:
        raise HTTPException(status_code=409,detail="Logistics request already exists for this lot")
    transaction = await get_transaction_detail(conn, lot_id)
    if transaction is None:
        raise HTTPException(
            status_code=404,
            detail="Transaction not found"
        )
    distance = calculate_distance(
        transaction["farmer_latitude"],
        transaction["farmer_longitude"],
        transaction["buyer_latitude"],
        transaction["buyer_longitude"]
    )
    if distance < 0:
        raise ValueError("Calculated distance cannot be negative")

    estimated_cost=distance*settings.transport_rate_per_km
    result= await pull_logistic_req(conn,lot_id,transaction["farmer_district"],transaction["district"],estimated_cost,distance)
    return result



    