from fastapi import APIRouter,Depends,HTTPException
from database import get_db
from schemas.farmer_profile import FarmerProfileCreate,FarmerProfileOut
from dependencies import get_current_user,required_role
from services.farmer_profile_service import existing_farmer_profile_check
from queries.farmer_profile import get_farmer_profile


router = APIRouter( prefix="/farmer",tags=["Farmer Profile"])

@router.post("/profile")
async def create_farmer_profile(profile:FarmerProfileCreate,current_user=Depends(required_role(["FARMER"])),conn=Depends(get_db)):
    return await existing_farmer_profile_check(conn,current_user["user_id"],profile)

@router.get("/profile",response_model=FarmerProfileOut)
async def get_the_profile(conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    row=await get_farmer_profile(conn,current_user["user_id"])
    if row is None:
        raise HTTPException(status_code=404,detail="No profile found")
    return dict(row)

