from pydantic import BaseModel

class PredictionOut(BaseModel):
    result:str
    slope:float|None
    intercept:float|None
    r_squared:float|None
    recommendation:str