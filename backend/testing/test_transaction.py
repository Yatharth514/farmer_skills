import asyncio
import asyncpg

from config import settings
from services.offer_service import accept_offer


async def main():

    pool = await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )

    async with pool.acquire() as conn:

        result = await accept_offer(
            conn,
            farmer_id=12,
            offer_id=10
        )

        print(result)

    await pool.close()


if __name__ == "__main__":
    asyncio.run(main())