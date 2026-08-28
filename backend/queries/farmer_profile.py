async def create_farmer_profile(conn,farmer_id:int,village:str,district:str,state:str,pincode:str,lang:str,acres:float,latitude:float,longitude:float):
    return await conn.fetchrow(
        """INSERT INTO farmer_profile(farmer_id,farmer_village,farmer_district,farmer_state,farmer_pincode,preferred_language,farmer_acres,farm_latitude,farmer_longitude)
        VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9)
        RETURNING *""",farmer_id,village,district,state,pincode,lang,acres,latitude,longitude
    )

async def get_farmer_profile(conn,farmer_id:int):
    return await conn.fetchrow(
        "SELECT * FROM farmer_profile WHERE farmer_id=$1",farmer_id
    )