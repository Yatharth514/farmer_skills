from pydantic import BaseModel,Field,field_validator
from enum import Enum

class PreferredLanguage(str,Enum):
    HINDI="HINDI"
    ENGLISH="ENGLISH"
    MARATHI="MARATHI"

class FarmerProfileCreate(BaseModel):
    farmer_village:str
    farmer_district:str
    farmer_state:str=Field("Maharashtra",description="Default State")
    farmer_pincode:str
    preferred_language:PreferredLanguage=PreferredLanguage.MARATHI
    farm_acres:float
    farmer_latitude:float
    farmer_longitude:float
    @field_validator('farmer_pincode')
    def check_pincode(cls,value):
        if len(value)==6 and value.isdigit():
            return value
        raise ValueError('The pincode should have digits only and should be 6 digits')

    @field_validator('farm_acres')
    def check_acre(cls,value):
        if value<=0:
            raise ValueError('acres should be greater than zero')
        return value

    @field_validator('farmer_latitude')
    def check_latitude(cls,value):
        if value<15.5 or value>22.1:
            raise ValueError('Incorrect Value')
        return value

    @field_validator('farmer_longitude')
    def check_longitude(cls,value):
        if value<72.6 or value>80.9:
            raise ValueError('Incorrect Value')
        return value

class FarmerProfileOut(BaseModel):
    farmer_id:int
    farmer_village:str
    farmer_district:str
    farmer_state:str
    farmer_pincode:str
    preferred_language:str
    farm_acres:float
    farmer_latitude:float
    farmer_longitude:float

    