from fastapi import FastAPI
import polars as pl

app = FastAPI()


@app.get("/fund-manager")
async def fund_metadata():

    df = pl.read_csv('data/metadata.csv')

    return df.to_dicts()

@app.get("/fund-manager/{code}")
async def fund_info(code):
    return {"message": int(code) + 1}

@app.get("/fund-manager/{code}/securities")
async def fund_security(code):
    return {"message": code}