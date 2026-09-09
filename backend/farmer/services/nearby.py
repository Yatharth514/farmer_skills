from queries.nearby_mandi import get_nearby_query
from queries.farmer_profile import get_farmer_profile
from fastapi import HTTPException


async def find_nearby_mandi(conn,farmer_id:int,max_distance:int,page:int,limit:int):
    row=await get_farmer_profile(conn,farmer_id)
    if row is None:
        raise HTTPException(status_code=404,detail="Please create the profile")
    offset=(page-1)*limit
    existing_mandis=await get_nearby_query(conn,row["farmer_latitude"],row["farmer_longitude"],max_distance,limit,offset)
    all_mandi=[]
    for mandi in existing_mandis:
        all_mandi.append(dict(mandi))
    return all_mandi


