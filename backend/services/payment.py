from fastapi import HTTPException 
from queries.payment import get_all_payment_detail_of_farmer,get_payment_detail_by_id


async def get_all_payments(conn,farmer_id:int,limit:int,page:int):
    offset=(page-1)*limit
    existing_payments=await get_all_payment_detail_of_farmer(conn,farmer_id,limit,offset)
    if not existing_payments:
        raise HTTPException(status_code=404,detail="Payment not found")
    all_payments=[]
    for payments in existing_payments:
        all_payments.append(dict(payments))
    
    return all_payments

async def get_a_payment(conn,farmer_id:int,payment_id:int):
    result=await get_payment_detail_by_id(conn,farmer_id,payment_id)
    if result is None :
        raise HTTPException(status_code=404,detail="Not found")
    return dict(result) 

