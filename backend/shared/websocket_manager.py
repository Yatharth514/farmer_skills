from fastapi import WebSocket,WebSocketDisconnect
from contextlib import asynccontextmanager

class ConnectionManager:
    def __init__(self):
        self.active_connections:dict[int,WebSocket]={}

    @asynccontextmanager
    async def manage_connection(self,websocket:WebSocket,user_id:int):

        await websocket.accept()
        self.active_connections[user_id]=websocket
        print(self.active_connections)

        try:
            yield
        except WebSocketDisconnect:
            pass
        finally:
            if user_id in self.active_connections:
                del self.active_connections[user_id]
            print(self.active_connections)
    async def notify_user(self,user_id:int,message:dict):
        if user_id in self.active_connections:
            try:
                await self.active_connections[user_id].send_json(message)
            except WebSocketDisconnect:
                if user_id in self.active_connections:
                    del self.active_connections[user_id]
manager=ConnectionManager()
    
