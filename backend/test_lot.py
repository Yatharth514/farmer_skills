import asyncio
import asyncpg 
from datetime import date 
from config import settings
from queries.lots import create_lot,get_lot_by_id,get_lots_by_farmer

async def main():
    pool=await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )
    farmer_id      = 1
    crop_id        = 1
    quantity       = 5.5
    unit           = "QUINTAL"
    harvest_date   = date(2026, 8, 30)
    expected_price = 2500.00

    


    async with pool.acquire() as conn:
        row=await create_lot(conn,farmer_id,crop_id,quantity,unit,harvest_date,expected_price)
        print(row)

        profile=await get_lot_by_id(conn,1)
        print(profile)

        farm=await get_lots_by_farmer(conn,1)
        print(farm)


    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())