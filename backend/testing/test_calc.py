import asyncio
import asyncpg

from config import settings
from services.calculate import comparison


async def main():
    pool = await asyncpg.create_pool(
        settings.database_url,
        min_size=2,
        max_size=5
    )

    async with pool.acquire() as conn:
        result = await comparison(
            conn=conn,
            farmer_id=1,
            crop_id=19,
            quantity=10,
            max_distance=500,
            cost=15
        )

        print(result)

    await pool.close()


if __name__ == "__main__":
    asyncio.run(main())