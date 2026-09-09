async def get_transaction_detail(conn,lot_id:int):
    return await conn.fetchrow(
        """SELECT 
        t.lot_id,
        t.buyer_id,
        t.farmer_id,
        b.buyer_latitude,
        b.buyer_longitude,
        fp.farmer_latitude,
        fp.farmer_longitude,
        b.district,
        fp.farmer_district
        FROM transactions t
        INNER JOIN buyers b
        ON t.buyer_id=b.buyer_id
        INNER JOIN farmer_profile fp
        ON t.farmer_id =fp.farmer_id
        WHERE t.lot_id = $1
        AND t.transaction_status = $2""",lot_id,"CONFIRMED"
    )

async def get_transaction_by_id(conn,transaction_id:int):
    return await conn.fetchrow(
        "SELECT * FROM transactions WHERE transaction_id = $1",transaction_id
    )