from pydantic import BaseModel,field_validator,model_validator
from enum import Enum
from datetime import date,datetime

class MandiInfo(BaseModel):
    market:str
    commodity:str
    arrival_date:date
    min_price:float
    max_price:float
    modal_price:float
    @field_validator('arrival_date', mode='before')
    @classmethod
    def parse_custom_date(cls, value):
        if isinstance(value, str):
            # Example: parsing "DD-MM-YYYY" from the external API
            return datetime.strptime(value, "%d/%m/%Y").date()
        return value
    @field_validator('min_price')
    def check_the_min(cls,value):
        if value<0:
           raise ValueError('price should be greater than or equal to zero')
        return value
    @field_validator('max_price')
    def check_the_max(cls,value):
        if value<0:
            raise ValueError('price should be greater than or equal to zero')
        return value
    @field_validator('modal_price')
    def check_the_modal(cls,value):
        if value<0:
            raise ValueError('price should be greater than or equal to zero')
        return value
    @model_validator(mode='after')
    def check_the_relation(self):
        if self.min_price>self.max_price or self.modal_price<self.min_price or self.modal_price>self.max_price:
            raise ValueError('The price details are wrong')
        return self
    
            

