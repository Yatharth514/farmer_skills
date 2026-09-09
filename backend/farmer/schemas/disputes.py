from pydantic import BaseModel
from datetime import datetime

class DisputeIn(BaseModel):
    transaction_id:int
    complaint_text:str

class DisputeOut(BaseModel):
    dispute_id:int
    transaction_id:int
    raised_by:int
    complaint_text:str
    status:str
    created_at:datetime
    resolved_at:datetime|None
    