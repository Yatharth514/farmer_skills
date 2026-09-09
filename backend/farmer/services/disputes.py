from fastapi import HTTPException
from queries.disputes import create_the_dispute,get_dispute_by_id,get_disputes_of_user
from schemas.disputes import DisputeIn
from queries.transaction import get_transaction_by_id
async def creation_of_dispute(conn,user_id:int,dispute:DisputeIn):
    row=await get_transaction_by_id(conn,dispute.transaction_id)
    if row is None:
        raise HTTPException(status_code=404,detail="Transaction not found")
    if row["farmer_id"]!=user_id and row["buyer_id"]!=user_id:
        raise HTTPException(status_code=404,detail="Transaction not found")
    result=await create_the_dispute(conn,dispute.transaction_id,user_id,dispute.complaint_text)
    return result

async def get_all_disputes(conn,user_id:int,limit:int,page:int):
    offset=(page-1)*limit
    existing_disputes=await get_disputes_of_user(conn,user_id,limit,offset)
    if not existing_disputes:
        raise HTTPException(status_code=404,detail="Disputes not found")
    all_disputes=[]
    for disputes in existing_disputes:
        all_disputes.append(dict(disputes))
    
    return all_disputes

async def dispute_by_id(conn,user_id:int,dispute_id:int):
    result=await get_dispute_by_id(conn,dispute_id,user_id)
    if result is None:
        raise HTTPException(status_code=404,detail="Dispute does not exist")
    return dict(result)