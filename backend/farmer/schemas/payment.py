from pydantic import BaseModel
from datetime import date, datetime
from decimal import Decimal

class PaymentOut(BaseModel):
    payment_id: int
    transaction_id: int
    amount: Decimal
    status: str
    expected_payment_date: date
    paid_at: datetime | None
    lot_id: int
    buyer_id: int