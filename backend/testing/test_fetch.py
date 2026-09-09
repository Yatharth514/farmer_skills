import asyncio
from services.mandi_sync_service import fetch_maharashtra_prices


async def main():
    records = await fetch_maharashtra_prices()

    markets = set()

    for record in records:
        markets.add(record["market"])

    print("Unique markets:")

    for market in list(markets)[:20]:
        print(market)


if __name__ == "__main__":
    asyncio.run(main())