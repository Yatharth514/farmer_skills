from services.get_prediction import get_the_prediction
import asyncio 
import asyncpg
from config import settings

async def main():
    pool=await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )

    async with pool.acquire() as conn:
        row= await get_the_prediction(conn,19,16)
        print(row)
    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())