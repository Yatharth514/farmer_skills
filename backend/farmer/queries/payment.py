from datetime import date 
async def payment_record(conn,transaction_id:int,amount:float,expected_payment_date:date):
    return await conn.fetchrow(
        """INSERT INTO payment(transaction_id,amount,status,expected_payment_date)
        VALUES($1,$2,$3,$4)
        RETURNING *""",transaction_id,amount,"PENDING",expected_payment_date
    )

async def get_all_payment_detail_of_farmer(conn,farmer_id:int,limit:int,offset:int):
    return await conn.fetch(
        """SELECT 
        p.payment_id,
        p.transaction_id,
        p.amount,
        p.status,
        p.expected_payment_date,
        p.paid_at,
        t.lot_id,
        t.buyer_id
        FROM payment p
        INNER JOIN transactions t 
        ON t.transaction_id=p.transaction_id
        WHERE t.farmer_id = $1
        LIMIT $2
        OFFSET $3""",farmer_id,limit,offset
    )

async def get_payment_detail_by_id(conn,farmer_id:int,payment_id:int):
    return await conn.fetchrow(
        """SELECT 
        p.payment_id,
        p.transaction_id,
        p.amount,
        p.status,
        p.expected_payment_date,
        p.paid_at,
        t.lot_id,
        t.buyer_id
        FROM payment p
        INNER JOIN transactions t 
        ON t.transaction_id=p.transaction_id
        WHERE t.farmer_id = $1 AND p.payment_id = $2
        """,farmer_id,payment_id
    )