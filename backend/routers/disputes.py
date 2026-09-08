from fastapi import APIRouter,Depends,HTTPException,Query
from database import get_db
from dependencies import required_role
from services.disputes import creation_of_dispute,get_all_disputes,dispute_by_id
from schemas.disputes import DisputeIn,DisputeOut

router = APIRouter( prefix="/disputes",tags=["Disputes"])

@router.post("/")
async def create_dispute(dispute:DisputeIn,conn=Depends(get_db),current_user=Depends(required_role(["FARMER","BUYER"]))):
    result=await creation_of_dispute(conn,current_user["user_id"],dispute)
    return result

@router.get("/",response_model=list[DisputeOut])
async def get_all(page:int=Query(1,ge=1),limit:int=Query(10,ge=1,le=100),conn=Depends(get_db),current_user=Depends(required_role(["FARMER","BUYER"]))):
    result=await get_all_disputes(conn,current_user["user_id"],limit,page)
    return result

@router.get("/{dispute_id}",response_model=DisputeOut)
async def get_a_dispute(dispute_id:int,conn=Depends(get_db),current_user=Depends(required_role(["FARMER","BUYER"]))):
    result=await dispute_by_id(conn,current_user["user_id"],dispute_id)
    return result