from utils.jwt_handler import create_token
from jose import jwt 
from config import settings


d={
    "sub": "1",
    "role": "FARMER"
}

token=create_token(d)

payload=jwt.decode(token,settings.jwt_secret,algorithms=[settings.jwt_algorithm])
print(payload)
