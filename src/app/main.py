#!/bin/python3

# Global
import os
# from typing import Optional

# External
import psycopg2
from fastapi import FastAPI

app = FastAPI()
conn = psycopg2.connect(
   database=os.getenv('DB'),
   user=os.getenv('DB_USER'),
   password=os.getenv('DB_PASS'),
   host=os.getenv('DB_HOST'),
   port=os.getenv('DB_PORT'),
)

@app.get("/fund-manager")
async def fund_metadata():
    
    cursor = conn.cursor()
    cursor.execute('SELECT * from metadata')
    
    data = cursor.fetchall()
    cols = tuple(item.name for item in cursor.description)
    
    res = [dict(zip(cols, row))for row in data]

    return res


@app.get("/fund-manager/{id}")
async def fund_info(id):

    cursor = conn.cursor()
    cursor.execute(f"SELECT * FROM information WHERE id='{id}';")
    data = cursor.fetchall()
    cols = tuple(item.name for item in cursor.description)
    
    res = [dict(zip(cols, row))for row in data]

    return res[0]


@app.get("/fund-manager/{id}/securities")
async def fund_security(id):

    cursor = conn.cursor()
    cursor.execute(f"SELECT * FROM security WHERE id='{id}';")
    data = cursor.fetchall()
    cols = tuple(item.name for item in cursor.description)
    
    res = [dict(zip(cols, row))for row in data]

    return res
