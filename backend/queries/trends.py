async def get_the_trends(conn,crop_id:int,mandi_id:int):
    return await conn.fetch(
        """SELECT price_date,modal_price FROM mandi_price WHERE crop_id = $1 AND mandi_id = $2
        ORDER BY price_date ASC""",crop_id,mandi_id
    )
