#!/bin/python3

# Global
import os

# External
from sqlalchemy import (
    create_engine
)
from sqlalchemy.orm import (
    DeclarativeBase,
    Mapped,
    mapped_column,
    sessionmaker
) 

# Declare
__DATABASE_URL = os.getenv('POSTGRESQL_URI')
POSTGRES_ENGINE = create_engine(url=__DATABASE_URL) if __DATABASE_URL else None
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=POSTGRES_ENGINE)

# Declare
class Base(DeclarativeBase):
    pass


class FundMetadata(Base):
    __tablename__ = "metadata"

    index: Mapped[int] 
    abbreviation: Mapped[str] = mapped_column(default='')
    full_name: Mapped[str] 
    address: Mapped[str] 
    url: Mapped[str] 
    id: Mapped[str] = mapped_column(primary_key=True)


class Information(Base):
    __tablename__ = "information"

    index: Mapped[int]
    full_name: Mapped[str]
    acronym: Mapped[str]
    english_name: Mapped[str]
    address: Mapped[str]
    phone: Mapped[str]
    fax: Mapped[str]
    certificate: Mapped[str]
    authorized_capital: Mapped[str]
    actual_capital: Mapped[str]
    id: Mapped[str] = mapped_column(primary_key=True)


class Security(Base):
    __tablename__ = "security"

    index: Mapped[int]
    security_code: Mapped[str]
    isins: Mapped[str]
    security_name: Mapped[str]
    security_type: Mapped[str]
    trading_market: Mapped[str]
    administration_place: Mapped[str]
    status: Mapped[str]
    security_url: Mapped[str]
    id: Mapped[str] = mapped_column(primary_key=True)
