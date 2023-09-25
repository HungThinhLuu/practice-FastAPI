#!/bin/python3

# External
from fastapi import FastAPI, Depends
from fastapi.responses import JSONResponse
from fastapi.encoders import jsonable_encoder
from sqlalchemy import select
from sqlalchemy.orm import Session

# Internal
from app.db import (
    SessionLocal,
    FundMetadata,
    Information,
    Security
)

# Declare
app = FastAPI()

# Define dependency
def get_db():
    db = SessionLocal(autocommit=False,)
    try:
        yield db
    finally:
        db.close()

# app.include_router(route.ROUTER)
@app.get("/fund-manager")
async def fund_metadata(db: Session = Depends(get_db)):
    
    res: list[tuple[FundMetadata]]
    stmt = select(FundMetadata)
    res = db.execute(stmt).all()

    metadata_objects = [i[0] for i in res]
    return JSONResponse(content=jsonable_encoder(metadata_objects))


@app.get("/fund-manager/{id}")
async def fund_info(id, db: Session = Depends(get_db)):
    res: list[tuple[Information]]
    stmt = select(Information).where(Information.id == id)
    res = db.execute(stmt).all()

    information_objects = [i[0] for i in res]
    return JSONResponse(content=jsonable_encoder(information_objects))


@app.get("/fund-manager/{id}/securities")
async def fund_security(id, db: Session = Depends(get_db)):
    res: list[tuple[Security]]
    stmt = select(Security).where(Security.id == id)
    res = db.execute(stmt).all()

    security_objects = [i[0] for i in res]
    return JSONResponse(content=jsonable_encoder(security_objects))
