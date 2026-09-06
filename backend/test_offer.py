import asyncio
import asyncpg
from queries.offer import get_all_offers,get_offer_for_the_lot
from config import settings

async def main():
    pool=await asyncpg.create_pool(
            settings.database_url,
            min_size=2,
            max_size=5
    )

    async with pool.acquire() as conn:
        row=await get_all_offers(conn,10,0,10)
        print(row)
        
        result= await get_offer_for_the_lot(
                    conn,
                    farmer_id=10,
                    lot_id=3,
                    limit=10,
                    offset=0
                )
        print(result)

    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())