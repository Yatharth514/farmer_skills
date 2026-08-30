from pydantic import BaseModel,field_validator
from enum import Enum
from datetime import date,datetime

class units(str,Enum):
    QUINTAL="QUINTAL"
    KG="KG"

class LotCreate(BaseModel):
    crop_id:int
    quantity:float
    unit:units
    harvest_date:date
    expected_price:float

    @field_validator('quantity')
    def quantity_check(cls,value):
        if value<=0:
            raise ValueError('quantity should be greater than zero')
        return value

    @field_validator('expected_price')
    def check_price(cls,value):
        if value <0:
            raise ValueError('expected_price should be postive')
        return value

class LotOut(BaseModel):
    lot_id:int
    farmer_id:int
    crop_id:int
    quantity:float
    unit:str
    harvest_date:date
    grade:str
    lot_status:str    
    expected_price:float
    created_at:datetime
    updated_at:datetime