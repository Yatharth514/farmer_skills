async def create_alert(conn,user_id:int,alert_type:str,message:str):
    return await conn.fetchrow(
        """INSERT INTO alerts(user_id,alert_type,message)
        VALUES($1,$2,$3)
        RETURNING *""",user_id,alert_type,message
    )
async def get_alerts(conn,user_id:int,limit:int,offset:int):
    return await conn.fetch(
        """SELECT alert_id,alert_type,message,is_read,created_at FROM alerts WHERE user_id = $1
        ORDER BY created_at DESC
        LIMIT $2
        OFFSET $3""",user_id,limit,offset
    )
async def mark_alert_as_read(conn, user_id: int, alert_id: int):
    return await conn.execute(
        """UPDATE alerts
        SET is_read = TRUE
        WHERE user_id = $1
        AND alert_id = $2""",user_id,alert_id
    )