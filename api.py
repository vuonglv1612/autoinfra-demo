import os

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {
        "Hello": "World",
        "Message": os.getenv("MESSAGE", "Welcome to the API")
    }
