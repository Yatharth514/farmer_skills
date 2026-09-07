from queries.offer import get_offer_for_the_lot,get_all_offers,get_lot_from_offer_id,accept_the_offer,reject_the_other_offers,reject_the_offer,fill_the_transaction_detail
from fastapi import HTTPException
from queries.lots import mark_sold

async def all_offers_of_farmer(conn,farmer_id:int,page:int,limit:int):
    offset=(page-1)*limit
    existing_offer=await get_all_offers(conn,farmer_id,offset,limit)
    if not existing_offer:
        raise HTTPException(status_code=404,detail="No offers")
    all_offer=[]
    for offer in existing_offer:
        all_offer.append(dict(offer))
    return all_offer

async def all_offer_of_lot(conn,lot_id:int,farmer_id:int,page:int,limit:int):
    offset=(page-1)*limit
    existing_offer=await get_offer_for_the_lot(conn,farmer_id,lot_id,limit,offset)
    if not existing_offer:
        raise HTTPException(status_code=404,detail="No offers")
    all_offer=[]
    for offer in existing_offer:
        all_offer.append(dict(offer))
    return all_offer


async def accept_offer(conn,farmer_id:int,offer_id:int):
    offer=await get_lot_from_offer_id(conn,offer_id)
    if offer is None:
        raise HTTPException(status_code=404,detail="Not Found")
    if offer["farmer_id"]!=farmer_id:
        raise HTTPException(status_code=403,detail="Not Authorized")
    if offer["lot_status"]!="LISTED":
        raise HTTPException(status_code=409,detail="Not allowed to sell right now")
    if offer["offer_status"]!="PENDING":
        raise HTTPException(status_code=409,detail="offer does not exist anymore")
    async with conn.transaction():
        await accept_the_offer(conn,offer_id)

        await reject_the_other_offers(conn,offer_id,offer["lot_id"])

        await mark_sold(conn,offer["lot_id"])
        transaction = await fill_the_transaction_detail(
            conn,
            offer["lot_id"],
            farmer_id,
            offer_id,
            offer["buyer_id"],
            offer["offer_price"],
            offer["quantity_accepted"]
            )
    return {
        "message": "Offer accepted successfully",
        "offer_id": offer_id,
        "lot_id": offer["lot_id"],
        "transaction":dict(transaction)
    }

async def reject_an_offer(conn,farmer_id:int,offer_id:int):
    offer=await get_lot_from_offer_id(conn,offer_id)
    if offer is None:
        raise HTTPException(status_code=404,detail="Not Found")
    if offer["farmer_id"]!=farmer_id:
        raise HTTPException(status_code=403,detail="Not Authorized")
    if offer["offer_status"]!="PENDING":
        raise HTTPException(status_code=409,detail="offer does not exist anymore")
    await reject_the_offer(conn,offer_id)
    return {
            "message": "Offer rejected successfully",
            "offer_id": offer_id,
            "lot_id": offer["lot_id"]
        }

