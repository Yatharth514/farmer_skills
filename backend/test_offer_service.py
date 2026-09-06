import asyncio
import asyncpg
from config import settings
from services.offer_service import all_offer_of_lot

async def main():
    pool=await asyncpg.create_pool(
                    settings.database_url,
                    min_size=2,
                    max_size=5
                )
    
    async with pool.acquire() as conn:
        row=await all_offer_of_lot(conn,3,10,1,10)
        print(row)

    await pool.close()



if __name__ == "__main__":
    asyncio.run(main())