from passlib.context import CryptContext

otp_context=CryptContext(
    schemes=["bcrypt"],
    deprecated="auto"
)

def hash_otp(otp:str):
    return otp_context.hash(otp)

def verify_otp(original_otp:str,hashed_otp:str):
    return otp_context.verify(original_otp,hashed_otp)