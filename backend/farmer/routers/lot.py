from fastapi import Depends,HTTPException,APIRouter,Query
from database import get_db
from dependencies import required_role
from schemas.lot import LotCreate,LotOut
from services.lots_service import creation_of_lot,get_all_lots
from queries.lots import get_lot_by_id

router=APIRouter(prefix='/farmer',tags=["Lot Creation"])


@router.post('/lots')
async def give_the_detail(lot:LotCreate,current_user=Depends(required_role(["FARMER"])),conn=Depends(get_db)):
    return await creation_of_lot(conn,current_user["user_id"],lot)

@router.get("/lots",response_model=list[LotOut])
async def get_the_lots_by_farmers(page:int=Query(1,ge=1),limit:int=Query(10,ge=1,le=100),conn=Depends(get_db),current_user=Depends(required_role(["FARMER"]))):
    row=await get_all_lots(conn,current_user["user_id"],page,limit)
    return row

@router.get("/lots/{lot_id}",response_model=LotOut)
async def get_a_lot(lot_id:int,current_user=Depends(required_role(["FARMER"])),conn=Depends(get_db)):
    row=await get_lot_by_id(conn,lot_id)
    if row is None:
        raise HTTPException(status_code=404,detail="The lot can not be discovered")
    if row["farmer_id"]!=current_user["user_id"]:
        raise HTTPException(status_code=404,detail="Can not be accessed")
    return dict(row) 
        