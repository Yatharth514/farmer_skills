async def get_user_by_phone(conn,phone_number:str):
    return await conn.fetchrow(
            "SELECT * FROM users WHERE phone_number = $1 ",phone_number
        )

async def create_user(conn,phone_number:str,role:str,name:str):
    return await conn.fetchrow(
       """INSERT INTO users(phone_number,user_role,full_name,is_phone_verified)
        VALUES($1,$2,$3,TRUE)
        RETURNING * """,phone_number,role,name,
    )