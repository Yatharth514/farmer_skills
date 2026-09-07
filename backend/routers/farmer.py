from fastapi import APIRouter,Depends,HTTPException,Query
from database import get_db
from schemas.farmer_profile import FarmerProfileCreate,FarmerProfileOut
from dependencies import required_role
from services.farmer_profile_service import existing_farmer_profile_check
from queries.farmer_profile import get_farmer_profile
from services.nearby import find_nearby_mandi
from schemas.mandi import MandiOut
from schemas.prediction import PredictionOut
from services.get_prediction import get_the_prediction
from schemas.calc import CalcResultOut
from services.calculate import comparison
from schemas.offer import OfferOut
from services.offer_service import all_offer_of_lot,all_offers_of_farmer,accept_offer,reject_an_offer
from services.logistic import request_the_log
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

@router.get("/nearby_mandi",response_model=list[MandiOut])
async def get_the_nearby_mandi(page:int=Query(1,ge=1),limit:int=Query(10,ge=1,le=100),max_distance:int=Query(...,gt=0,le=1000),conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    row=await find_nearby_mandi(conn,current_user["user_id"],max_distance,page,limit)
    return row

@router.get("/predictor",response_model=PredictionOut)
async def predict_for_crop(crop_id:int,mandi_id:int,current_user=Depends(required_role(["FARMER"])),conn=Depends(get_db)):
    row=await get_the_prediction(conn,crop_id,mandi_id)
    return row

@router.get("/compare",response_model=list[CalcResultOut])
async def get_calc(crop_id:int,quantity:float,cost:float,max_distance:int=Query(...,gt=0,le=1000),current_user=Depends(required_role(["FARMER"])),conn=Depends(get_db)):
    row=await comparison(conn,current_user["user_id"],crop_id,quantity,max_distance,cost)
    return row

@router.get("/offers",response_model=list[OfferOut])
async def get_offer(page:int=Query(1,ge=1),limit:int=Query(10,ge=1,le=100),conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    row= await all_offers_of_farmer(conn,current_user["user_id"],page,limit)
    return row

@router.get("/lots/{lot_id}/offers",response_model=list[OfferOut])
async def get_lot_offer(lot_id:int,page:int=Query(1,ge=1),limit:int=Query(10,ge=1,le=100),conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    row=await all_offer_of_lot(conn,lot_id,current_user["user_id"],page,limit)
    return row

@router.post("/offers/{offer_id}/accept")
async def accept_farmer_offer(
    offer_id: int,
    conn=Depends(get_db),
    current_user=Depends(required_role(["FARMER"]))
):
    result = await accept_offer(
        conn,
        current_user["user_id"],
        offer_id
    )

    return result

@router.post("/offers/{offer_id}/reject")
async def reject_offer(offer_id:int,conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    result=await reject_an_offer(conn,current_user["user_id"],offer_id)
    return result

@router.post("/request/{lot_id}")
async def request_for_log(lot_id:int,conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    result=await request_the_log(conn,lot_id,current_user["user_id"])
    return result
