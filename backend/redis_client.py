import redis.asyncio as redis
from config import settings

async def create_redis_pool():
    pool = redis.from_url(
        settings.redis_url,
        encoding="utf-8",
        decode_responses=True,
    )
    print("Redis connection initialized")
    return pool

async def close_redis(redis_client):
    await redis_client.aclose()   
    print("Redis connection closed")