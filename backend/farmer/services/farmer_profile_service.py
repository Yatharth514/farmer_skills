from queries.farmer_profile import get_farmer_profile,create_farmer_profile
from fastapi import HTTPException
from schemas.farmer_profile import FarmerProfileCreate

async def existing_farmer_profile_check(conn,farmer_id:int,profile:FarmerProfileCreate):
    row=await get_farmer_profile(conn,farmer_id)
    if row:
        raise HTTPException(status_code=409,detail="Profile already exist")
    new_profile=await create_farmer_profile(conn,farmer_id,profile.farmer_village,profile.farmer_district,profile.farmer_state,profile.farmer_pincode,profile.preferred_language,profile.farm_acres,profile.farmer_latitude,profile.farmer_longitude)
    return new_profile
    