from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from database import lifespan
from farmer.routers.auth import router as auth_router
from farmer.routers.farmer import router as farmer_router
from farmer.routers.lot import router as lot_router
from farmer.routers.disputes import router as dispute_router
from shared.routers.websocket import router as websocket_router
app=FastAPI(lifespan=lifespan)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"], #here we will add our react url
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
app.include_router(auth_router,prefix="/api")
app.include_router(farmer_router,prefix="/api")
app.include_router(lot_router,prefix="/api")
app.include_router(dispute_router,prefix="/api")
app.include_router(websocket_router)

# @app.get("/db-test")
# async def db_test(): here we have tested the database connection with fastapi
#     async with app.state.pool.acquire() as conn:
#         result= await conn.fetchval("SELECT 1")

#         return{"database":result}

# @app.get("/redis-test")
# async def redis_test():
#     await app.state.redis.set("test","ok")
#     value=await app.state.redis.get("test")

#     return{"Value":value}
