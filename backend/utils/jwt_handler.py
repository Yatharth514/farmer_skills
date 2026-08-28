from jose import jwt,JWTError
from datetime import datetime,timedelta,timezone
from config import settings
from fastapi import HTTPException

def create_token(data:dict):
    to_encode=data.copy()

    exp_time=datetime.now(timezone.utc)+timedelta(minutes=settings.jwt_expiry_time)

    to_encode.update({"exp":exp_time})

    jwt_token=jwt.encode(to_encode,settings.jwt_secret,algorithm=settings.jwt_algorithm)

    return jwt_token 


def verify_token(token:str):
    try:
        payload=jwt.decode(token,settings.jwt_secret,algorithms=[settings.jwt_algorithm])
        user=payload.get("sub")

        if user is None:
            raise HTTPException(status_code=401,detail="Invalid Token")

        return user

    except JWTError:
        raise HTTPException(status_code=401,detail="Expired or Invalid")