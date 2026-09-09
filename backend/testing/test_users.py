import asyncpg
import asyncio
from config import settings
from queries.users import get_user_by_phone,create_user

async def main():
    pool= await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )

    phone="7007348694"
    

    async with pool.acquire() as conn:
        row= await get_user_by_phone(conn,phone)
        print(row)



    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())



