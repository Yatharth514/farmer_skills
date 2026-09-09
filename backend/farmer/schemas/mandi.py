from pydantic import Field,BaseModel

class MandiCreate(BaseModel):
    mandi_name: str = Field(..., max_length=100)
    district: str = Field(..., max_length=50)
    state: str = Field(default="Maharashtra", max_length=50)
    latitude: float = Field(..., ge=15.5, le=22.1)
    longitude: float = Field(..., ge=72.6, le=80.9)

class MandiOut(BaseModel):
    mandi_name: str
    district: str
    distance_km:float