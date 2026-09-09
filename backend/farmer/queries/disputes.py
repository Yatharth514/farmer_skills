async def create_the_dispute(conn,transaction_id:int,raised_by:int,complaint_text:str):
    return await conn.fetchrow(
        """INSERT INTO disputes(transaction_id,raised_by,complaint_text)
        VALUES($1,$2,$3)
        RETURNING * """,transaction_id,raised_by,complaint_text
    )

async def get_disputes_of_user(conn,raised_by:int,limit,offset):
    return await conn.fetch(
        """SELECT * FROM disputes 
        WHERE raised_by = $1
        LIMIT $2
        OFFSET $3""",raised_by,limit,offset
    )

async def get_dispute_by_id(conn,dispute_id:int,raised_by:int):
    return await conn.fetchrow(
        """SELECT * FROM disputes
        WHERE dispute_id = $1
        AND raised_by = $2""",dispute_id,raised_by
    )