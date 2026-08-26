import asyncio
import redis.asyncio as redis

from config import settings
from services.otp_service import generate_and_store_otp,verification_of_otp


async def main():
    redis_client = redis.from_url(
        settings.redis_url,
        encoding="utf-8",
        decode_responses=True
    )

    phone = "9876543210"

    # Generate and store OTP
    otp = await generate_and_store_otp(redis_client, phone)

    print("Generated OTP:", otp)

    # Check what is actually stored
    stored_hash = await redis_client.get(f"otp:{phone}")
    remaining_attempts = await redis_client.get(
        f"otp_remaining_attempts:{phone}"
    )

    # Check TTL
    otp_ttl = await redis_client.ttl(f"otp:{phone}")
    attempts_ttl = await redis_client.ttl(
        f"otp_remaining_attempts:{phone}"
    )

    print("Stored OTP value:", stored_hash)
    print("Remaining attempts:", remaining_attempts)
    print("OTP TTL:", otp_ttl)
    print("Attempts TTL:", attempts_ttl)

    #verifying the otp 
    check=await verification_of_otp(phone,otp,redis_client)
    print("Result:",check)

    await redis_client.aclose()


if __name__ == "__main__":
    asyncio.run(main())