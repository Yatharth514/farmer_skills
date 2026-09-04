import asyncio
import asyncpg
from config import settings
from services.mandi_sync_service import latest_mandi_price

async def main():
    pool=await asyncpg.create_pool(
                settings.database_url,
                min_size=2,
                max_size=5
            )

    async with pool.acquire() as conn:
        result=await latest_mandi_price(conn)
        print(result)
    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())

