async def create_crop(conn,crop_name:str):
    return await conn.fetchrow(
        """INSERT INTO crop(crop_name,unit)
        VALUES($1,$2)
        RETURNING *""",crop_name,"QUINTAL"
    )


async def create_mandi(conn, mandi_name: str, district: str, latitude: float, longitude: float):
    return await conn.fetchrow(
        """
        INSERT INTO mandis (mandi_name, district, latitude, longitude)
        VALUES ($1, $2, $3, $4)
        RETURNING *
        """,
        mandi_name, district, latitude, longitude,
    )