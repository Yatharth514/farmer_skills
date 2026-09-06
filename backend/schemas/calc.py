from pydantic import BaseModel

class CalcResultOut(BaseModel):
    mandi_name:str
    mandi_id:int
    distance:float
    transportation_cost:float
    net_revenue:float
    modal_price:float