from pydantic import BaseModel
from datetime import date, datetime
from decimal import Decimal

class OfferOut(BaseModel):
    offer_id: int
    buyer_id: int
    offer_price: Decimal
    quantity_accepted: Decimal
    unit: str
    pickup_date: date
    payment_terms: str
    status: str
    created_at: datetime
    offer_id: int
    buyer_id: int
    offer_price: Decimal
    quantity_accepted: Decimal
    unit: str
    pickup_date: date
    payment_terms: str
    status: str
    created_at: datetime
    crop_name: str
    full_name: str
    business_name: str | None
    buyer_type: str
    district: str
    state: str
    is_verified: bool
    

class AcceptOfferIn(BaseModel):
    expected_payment_date:date