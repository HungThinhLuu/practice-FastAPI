#!/bin/python3

# External
import polars as pl
from fastapi import FastAPI

# Declare
app = FastAPI()


@app.get("/fund-manager")
async def fund_metadata():
    res = pl.read_csv('app/data/metadata.csv')
    res = res.with_columns(
        pl.col('url').str.split('/').list.get(-1).cast(pl.Int32).alias('id')
    ).drop('no')
    return res.to_dicts()

@app.get("/fund-manager/{id}")
async def fund_info(id):
    temp_df = pl.read_csv('app/data/metadata.csv')
    name = temp_df.filter(pl.col('url').str.split('/').list.get(-1) == id).select('full_name').item()
    res = pl.read_csv(f'app/data/info_{name}.csv', )
    return res.to_dicts()

@app.get("/fund-manager/{id}/securities")
async def fund_security(id):
    temp_df = pl.read_csv('app/data/metadata.csv')
    name = temp_df.filter(pl.col('url').str.split('/').list.get(-1) == id).select('full_name').item()
    res = pl.read_csv(f'app/data/security_{name}.csv')
    return res.to_dicts()
