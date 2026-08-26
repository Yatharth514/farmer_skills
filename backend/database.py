import asyncpg
# import os 
from contextlib import asynccontextmanager
from fastapi import FastAPI,Request
from config import settings
import redis.asyncio as redis 
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

    app.state.redis= redis.from_url(settings.redis_url,decode_responses=True)

    print("Database connection pool initialized")

    yield
    await app.state.pool.close()
    await app.state.redis.aclose()
    print("Database has been closed.")

async def get_db(request:Request):
    async with request.app.state.pool.acquire() as conn:
        yield conn

