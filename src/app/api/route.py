#!/bin/python3

# External
from fastapi import APIRouter
from sqlalchemy import select
from sqlalchemy.orm import Session

# Internal
from app.db import (
    POSTGRES_ENGINE,
    FundMetadata,
    Information,
    Security,
)

# Declare
ROUTER = APIRouter()

@ROUTER.get("/fund-manager")
async def fund_metadata():
    
    res: list[tuple[FundMetadata]]
    with Session(POSTGRES_ENGINE) as session:
        session = Session(POSTGRES_ENGINE)
        stmt = select(FundMetadata)
        res = session.execute(stmt).all()

    metadata_objects = [i[0] for i in res]
    return [{
        "index": obj.index,
        "abbreviation": obj.abbreviation,
        "full_name": obj.full_name,
        "address": obj.address,
        "url": obj.url,
        "id": obj.id,
    } for obj in metadata_objects]


@ROUTER.get("/fund-manager/{id}")
async def fund_info(id):
    res: list[tuple[Information]]
    with Session(POSTGRES_ENGINE) as session:
        session = Session(POSTGRES_ENGINE)
        stmt = select(Information).where(Information.id == id)
        res = session.execute(stmt).all()

    information_objects = [i[0] for i in res]
    return [{
        "index": obj.index,
        "full_name": obj.full_name,
        "acronym": obj.acronym,
        "english_name": obj.english_name,
        "address": obj.address,
        "phone": obj.phone,
        "fax": obj.fax,
        "certificate": obj.certificate,
        "authorized_capital": obj.authorized_capital,
        "actual_capital": obj.actual_capital,
        "id": obj.id,
    } for obj in information_objects]


@ROUTER.get("/fund-manager/{id}/securities")
async def fund_security(id):
    res: list[tuple[Security]]
    with Session(POSTGRES_ENGINE) as session:
        session = Session(POSTGRES_ENGINE)
        stmt = select(Security).where(Security.id == id)
        res = session.execute(stmt).all()

    security_objects = [i[0] for i in res]
    return [{
        "index": obj.index,
        "security_code": obj.security_code,
        "isins": obj.isins,
        "security_name": obj.security_name,
        "security_type": obj.security_type,
        "trading_market": obj.trading_market,
        "administration_place": obj.administration_place,
        "status": obj.status,
        "security_url": obj.security_url,
        "id": obj.id,
    } for obj in security_objects]
