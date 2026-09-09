from pydantic import BaseModel
from enum import Enum
from datetime import datetime

class AlertType(str,Enum):
    NEW_OFFER="NEW_OFFER"
    PRICE_THRESHOLD="PRICE_THRESHOLD"
    GRADING_COMPLETE="GRADING_COMPLETE"
    PAYMENT_OVERDUE="PAYMENT_OVERDUE"
class AlertIn(BaseModel):
    alert_type:AlertType
    message:str

class AlertOut(BaseModel):
    alert_id:int
    alert_type:str
    message:str
    is_read:bool
    created_at:datetime