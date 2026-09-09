from queries.trends import get_the_trends
from services.sale_window import predictor
from fastapi import HTTPException

async def get_the_prediction(conn,crop_id:int,mandi_id:int):
    records=await get_the_trends(conn,crop_id,mandi_id)
    if not records:
        raise HTTPException(
            status_code=404,
            detail="No price history found for this crop and mandi"
        )
    start_date=records[0]["price_date"]
    day_offsets=[]
    prices=[]
    for record in records:
        day_offsets.append((record["price_date"]-start_date).days)
        prices.append(float(record["modal_price"]))

    result=predictor(day_offsets,prices,slope_threshold=5.0)
    return result


