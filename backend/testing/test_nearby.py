import asyncio
import asyncpg
from queries.nearby_mandi import get_nearby_query
from config import settings

async def main():
    pool=await asyncpg.create_pool(
            settings.database_url,
            min_size=2,
            max_size=5
    )
    farmer_latitude = 20.1000
    farmer_longitude = 74.1500
    max_distance = 100

    async with pool.acquire() as conn:
        row=await get_nearby_query(conn,farmer_latitude,farmer_longitude,max_distance)
        print(row)
    await pool.close()
if __name__ == "__main__":
    asyncio.run(main())

