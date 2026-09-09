from fastapi import APIRouter, WebSocket, WebSocketDisconnect, HTTPException

from websocket_manager import manager
from utils.jwt_handler import verify_token
from queries.users import get_user_by_id


router = APIRouter()


@router.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket):

    token = websocket.query_params.get("token")

    if token is None:
        await websocket.close(code=1008, reason="Authentication required")
        return

    try:
        user_id = verify_token(token)
    except HTTPException:
        await websocket.close(code=1008, reason="Invalid or expired token")
        return

    conn = await websocket.app.state.pool.acquire()

    try:
        user = await get_user_by_id(conn, int(user_id))

        if user is None:
            await websocket.close(code=1008, reason="User not found")
            return

        if user["is_active"] is False:
            await websocket.close(code=1008, reason="User is deactivated")
            return

        if user["user_role"] != "FARMER":
            await websocket.close(code=1008, reason="Not authorized")
            return

        async with manager.manage_connection(websocket, int(user_id)):

            while True:
                await websocket.receive_text()

    except WebSocketDisconnect:
        pass

    finally:
        await websocket.app.state.pool.release(conn)