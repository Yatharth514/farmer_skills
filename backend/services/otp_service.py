from utils.otp_hashing import hash_otp,verify_otp
from config import settings
import string
import secrets


async def generate_and_store_otp(redis_client,phone:str):
    otp=''.join(secrets.choice(string.digits)for _ in range(6))

    hashed_otp=hash_otp(otp)
    await redis_client.set(f"otp:{phone}",hashed_otp,ex=settings.otp_expiry_seconds)
    await redis_client.set(f"otp_attempts:{phone}",0,ex=settings.otp_expiry_seconds)

    return otp


async def verification_of_otp(phone:str,submitted_otp:str,redis_client):
    stored_otp=await redis_client.get(f"otp:{phone}")

    if not stored_otp:
        return False
    otp_attempt=int(await redis_client.get(f"otp_attempts:{phone}")or 0)

    if otp_attempt>=settings.otp_max_attempts:
        return False

    await redis_client.incr(f"otp_attempts:{phone}")

    if verify_otp(submitted_otp,stored_otp):
        await redis_client.delete(f"otp:{phone}")
        await redis_client.delete(f"otp_attempts:{phone}")
        return True
    return False

    
