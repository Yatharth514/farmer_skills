import asyncio
import websockets


async def test():
    uri = "ws://127.0.0.1:8000/ws/1"

    try:
        async with websockets.connect(uri) as websocket:
            print("Connected!")

            while True:
                message = await websocket.recv()
                print("Received:", message)

    except Exception as e:
        print("ERROR:", repr(e))


asyncio.run(test())