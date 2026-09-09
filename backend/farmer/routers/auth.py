from fastapi import APIRouter,Depends,HTTPException
from services.otp_service import generate_and_store_otp,verification_of_otp
from database import get_redis,get_db
from queries.users import get_user_by_phone,create_user
from utils.jwt_handler import create_token
from dependencies import get_current_user,required_role
from queries.farmer_profile import get_farmer_profile

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
        token=create_token({"sub":str(user["user_id"]),"role":user["user_role"]})
        if user["user_role"]!="FARMER":
            return {
                        "message": "OTP verified",
                        "user_exists": True,
                        "token":token,
                        "has_profile":False
                    }
        row=await get_farmer_profile(conn,user["user_id"])
        if row is None:
            return {
                        "message": "OTP verified",
                        "user_exists": True,
                        "token":token,
                        "has_profile":False
                    }
        return {
                        "message": "OTP verified",
                        "user_exists": True,
                        "token":token,
                        "has_profile":True
                }

        
        

    user = await create_user(conn,phone_number,role,name)
    new_token=create_token({"sub":str(user["user_id"]),"role":user["user_role"]})

    return {
        "message": "User created successfully",
        "user_exists": False,
        "user_id": user["user_id"],
        "role": user["user_role"],
        "token":new_token,
        "has_profile":False
    }

# @router.get("/me-test")
# async def me_test(current_user=Depends(get_current_user)):
#     return {
#         "user_id": current_user["user_id"],
#         "role": current_user["user_role"],
#         "name": current_user["full_name"],
#         "is_active": current_user["is_active"]
#     }

# @router.get("/farmer/ping")
# async def farmer_ping(
#     current_user=Depends(required_role(["FARMER"]))
# ):
#     return {"message": "ok"}


      
