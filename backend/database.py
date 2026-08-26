import asyncpg
# import os 
from contextlib import asynccontextmanager
from fastapi import FastAPI,Request
from config import settings
from redis_client import create_redis_pool, close_redis 
# from dotenv import load_dotenv

# load_dotenv()

# DATABASE_URL=os.getenv("DATABASE_URL")

@asynccontextmanager
async def lifespan(app:FastAPI):

    app.state.pool=await asyncpg.create_pool(
        settings.database_url,
        min_size=5,
        max_size=20
    )

    app.state.redis= await create_redis_pool()

    print("Database connection pool initialized")

    yield
    await app.state.pool.close()
    print("Database has been closed.")
    await close_redis(app.state.redis)

async def get_db(request:Request):
    async with request.app.state.pool.acquire() as conn:
        yield conn

async def get_redis(request: Request):
    return request.app.state.redis

