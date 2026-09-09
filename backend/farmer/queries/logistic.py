async def pull_logistic_req(conn,lot_id:int,pickup_location:str,drop_location:str,estimated_cost:float,estimated_distance:float):
    return await conn.fetchrow(
        """INSERT INTO logistic_request
        (lot_id,pickup_location,drop_location,estimated_cost,estimated_distance,status)
        VALUES($1,$2,$3,$4,$5,$6)
        RETURNING * """,lot_id,pickup_location,drop_location,estimated_cost,estimated_distance,"QUOTED"
    )
async def check_the_log_req(conn,lot_id:int):
    return await conn.fetchrow(
        "SELECT * FROM logistic_request WHERE lot_id = $1",lot_id
    )