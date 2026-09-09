from websocket_manager import manager
from queries.alerts import create_alert,get_alerts,mark_alert_as_read

async def send_alert(conn,user_id:int,alert_type:str,message:str):
    alert=await create_alert(conn,user_id,alert_type,message)
    await manager.notify_user(
    user_id,
    {
        "alert_id": alert["alert_id"],
        "alert_type": alert["alert_type"],
        "message": alert["message"],
        "is_read": alert["is_read"],
        "created_at": alert["created_at"].isoformat()
    })

async def get_all_alerts(conn,user_id:int,limit:int,page:int):
    offset=(page-1)*limit
    existing_alerts=await get_alerts(conn,user_id,limit,offset)
    all_alerts=[]
    for alerts in existing_alerts:
        all_alerts.append(dict(alerts))
    
    return all_alerts

async def mark_user_alert_as_read(conn, user_id: int, alert_id: int):
    result = await mark_alert_as_read(conn, user_id, alert_id)
    return result