import asyncio
import asyncpg 
from config import settings
from queries.farmer_profile import get_farmer_profile,create_farmer_profile

async def main():
    pool=await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )
    farmer_id = 1
    village = "Pune Village"
    district = "Pune"
    state = "Maharashtra"
    pincode = "411001"
    lang = "MARATHI"
    acres = 5.50
    latitude = 18.5204300
    longitude = 73.8567437

    


    async with pool.acquire() as conn:
        row=await create_farmer_profile(conn,farmer_id,village,district,state,pincode,lang,acres,latitude,longitude)
        print(row)

        profile=await get_farmer_profile(conn,1)
        print(profile)


    await pool.close()

if __name__ == "__main__":
    asyncio.run(main())