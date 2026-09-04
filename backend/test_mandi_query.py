import asyncio
import asyncpg 
from datetime import date 
from config import settings
from queries.mandi_price import get_crop_by_name,get_mandi_by_name,insert_mandi_price

async def main():
    pool=await asyncpg.create_pool(
            settings.database_url,
            min_size=2,
            max_size=5
        )

    async with pool.acquire() as conn:
        row =await get_mandi_by_name(conn,"Kalamna Market APMC")
        print(row)
        row2=await get_crop_by_name(conn,"Tomato")
        print(row2)
        row3=await insert_mandi_price(
        conn,
        crop_id=1,
        mandi_id=1,
        price_date=date(2026, 9, 4),
        min_price=1200,
        max_price=1800,
        modal_price=1500,
        arrival_volume=None
        )
        print(row3)
    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())



