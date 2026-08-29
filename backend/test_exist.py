import asyncio
import asyncpg 
from config import settings
from services.farmer_profile_service import existing_farmer_profile_check
from schemas.farmer_profile import FarmerProfileCreate

async def main():
    pool=await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )
    profile = FarmerProfileCreate(
        farmer_village="Thane Village",
        farmer_district="Thane",
        farmer_state="Maharashtra",
        farmer_pincode="411001",
        preferred_language="MARATHI",
        farm_acres=5.5,
        farmer_latitude=18.5204302,
        farmer_longitude=73.8567637
    )

    async with pool.acquire() as conn:
        row=await existing_farmer_profile_check(conn,2,profile)
        print(row)

    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())
