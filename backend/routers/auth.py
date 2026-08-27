from fastapi import APIRouter,Depends,HTTPException
from services.otp_service import generate_and_store_otp,verification_of_otp
from database import get_redis,get_db
from queries.users import get_user_by_phone,create_user

router=APIRouter(prefix="/auth",tags=["Auth"])


@router.post("/request-otp")
async def get_the_otp(phone_number:str,role:str,redis_client=Depends(get_redis)):
    otp=await generate_and_store_otp(redis_client,phone_number,role)
    print(otp)
    return {"message":"Otp sent"}

@router.post("/verify-otp")
async def verify_the_otp(phone_number:str,submitted_otp:str,name:str,redis_client=Depends(get_redis),conn=Depends(get_db)):
    role=await verification_of_otp(phone_number,submitted_otp,redis_client)

    if role is None:
        raise HTTPException(
            status_code=400,
            detail="Invalid or expired OTP"
        )
    print("VERIFICATION RESULT:", role)

    user=await get_user_by_phone(conn,phone_number)

    if user:
        return {
            "message": "OTP verified",
            "user_exists": True
        }

    user = await create_user(conn,phone_number,role,name)

    return {
        "message": "User created successfully",
        "user_exists": False,
        "user_id": user["user_id"],
        "role": user["user_role"]
    }

    


      
