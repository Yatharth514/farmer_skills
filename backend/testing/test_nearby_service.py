import asyncio
import asyncpg
from config import settings
from services.nearby import find_nearby_mandi

async def main():
    pool=await asyncpg.create_pool(
                    settings.database_url,
                    min_size=2,
                    max_size=5
                )
    
    async with pool.acquire() as conn:
        result=await find_nearby_mandi(conn,1,100,1,10)
        print(result)
    await pool.close()
if __name__ == "__main__":
    asyncio.run(main())