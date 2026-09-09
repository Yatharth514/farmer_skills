import asyncio
import asyncpg

from config import settings
from services.alert_service import send_alert


async def main():

    pool = await asyncpg.create_pool(
        settings.database_url,
        min_size=1,
        max_size=2
    )

    async with pool.acquire() as conn:

        await send_alert(
            conn,
            user_id=1,
            alert_type="NEW_OFFER",
            message="Test alert from send_alert"
        )

        print("Alert created successfully.")

    await pool.close()


if __name__ == "__main__":
    asyncio.run(main())