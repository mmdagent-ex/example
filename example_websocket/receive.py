import asyncio
import websockets

# handler for each connection
async def handle_client(websocket, path):
    print("connected")
    async for message in websocket:
        print(f"Received message: {message}")

# main
async def main():
    async with websockets.serve(handle_client, "localhost", 9001):
        await asyncio.Future()  # run forever

if __name__ == '__main__':
    asyncio.run(main())
