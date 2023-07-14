import datetime

import uvicorn
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {
        "app": "fastapi",
        "datetime": datetime.datetime.now().strftime("%Y-%m-%d %I:%M:%S %p"),
    }


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
