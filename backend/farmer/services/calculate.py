from queries.nearby_mandi import get_nearby_mandis_for_comparison,filter_with_crop
from fastapi import HTTPException
from queries.farmer_profile import get_farmer_profile


async def comparison(conn,farmer_id:int,crop_id:int,quantity:float,max_distance:int,cost:float):
    row=await get_farmer_profile(conn,farmer_id)
    if not row:
        raise HTTPException(status_code=404,detail="Create Your Profile")
    row1=await get_nearby_mandis_for_comparison(conn,row["farmer_latitude"],row["farmer_longitude"],max_distance)
    if not row1:
        raise HTTPException(status_code=404,detail="No nearby mandi found within max distance")
    filterd_data=[]
    for ro in row1:
        result=await filter_with_crop(conn,crop_id,ro["mandi_id"])
        if result is None:
            continue 
        result = dict(result)
        result["distance_btw"]=ro["distance_km"]
        result["mandi_name"]=ro["mandi_name"]
        filterd_data.append(result)
    if not filterd_data:
        raise HTTPException(status_code=404,detail="No nearby mandi found within max distance")
    final_data=[]
    for data in filterd_data:
        gross_revenue = float(data["modal_price"]) * quantity
        transportation_cost=data["distance_btw"]*cost
        net_revenue=gross_revenue-transportation_cost
        row3={
               "mandi_name":data["mandi_name"],
               "mandi_id":data["mandi_id"],
               "transportation_cost":transportation_cost,
               "distance":data["distance_btw"],
               "modal_price":round(float(data["modal_price"]),2),
               "net_revenue":round(net_revenue,2)
            }
        final_data.append(row3)
    sorted_data=sorted(final_data,key=lambda x: x["net_revenue"], reverse=True)
    return sorted_data




