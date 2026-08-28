from fastapi import Depends,HTTPException
from fastapi.security import HTTPBearer,HTTPAuthorizationCredentials
from utils.jwt_handler import verify_token
from database import get_db
from queries.users import get_user_by_id

security=HTTPBearer()

async def get_current_user(credentials:HTTPAuthorizationCredentials=Depends(security),conn=Depends(get_db)):
    token =credentials.credentials

    user_id=verify_token(token)
    user=await get_user_by_id(conn,user_id)
    if user is None:
        raise HTTPException(status_code=404,detail="User not found")
    if user["is_active"] is False:
        raise HTTPException(status_code=403,detail="User is deactivated")

    return user

def required_role(allowed_role:list):
    async def role_checker(current_user=Depends(get_current_user)):
        if current_user["user_role"] not in allowed_role:
            raise HTTPException(status_code=403,detail="Not authorized")
        return current_user
    return role_checker
    