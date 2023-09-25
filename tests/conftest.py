#!/bin/python3

# Global
import sys
import os

# Add path
sys.path.append(os.path.join(os.path.abspath(os.curdir),'src'))

# External
import pytest
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.pool import StaticPool
from fastapi.testclient import TestClient

# Internal
from src.app.main import (
    app,
    get_db
)
from src.app.db import (
    Base,
    FundMetadata,
    Information,
    Security
)

# Declare
SQLALCHEMY_DATABASE_URL = "sqlite:///./fund.db"
engine = create_engine(
    SQLALCHEMY_DATABASE_URL,
    connect_args={"check_same_thread": False},
    poolclass=StaticPool,
)
Base.metadata.create_all(bind=engine)

# Create sessionmaker
TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Define dependency
def override_get_db():
    try:
        db = TestingSessionLocal()
        yield db
    finally:
        db.close()

# Init database
with TestingSessionLocal() as session:
    fund = FundMetadata(
        url = "https://vsd.vn/qlqd/2747",
        index = 0,
        full_name = "DRAGON CAPITAL VIETFUND MANAGEMENT",
        abbreviation = "DCVFM",
        id = "2747",
        address = "Level 15, Melinh Point Building, 2 Ngo Duc Ke, District 1, Ho Chi Minh City, Vietnam"
    )
    info = Information(
        index = 0,
        full_name = "Công ty cổ phần Quản Lý quỹ Đầu tư Dragon Capital Việt Nam",
        english_name = "DRAGON CAPITAL VIETFUND MANAGEMENT",
        phone = "28.38251488",
        certificate = "Số 45/UBCK-GP ngày 08/01/2009",
        actual_capital = "3.443.012.000.000 đồng",
        acronym = "DCVFM",
        address = "Tầng 15, Tòa nhà Mê Linh Point, 02 Ngô Đức Kế, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh, Việt Nam.",
        fax = "28.38251489",
        authorized_capital = "3.443.012.000.000 đồng",
        id = "2747"
    )
    sec = Security(
        security_code = "E1VFVN30",
        security_type = "Chứng chỉ quỹ",
        administration_place = "Trụ sở chính",
        security_url = "https://vsd.vn/s-detail/2464",
        isins = "VN0E1VFVN306",
        index = 0,
        security_name = "Chứng chỉ Quỹ ETF DCVFMVN30",
        trading_market = "HOSE",
        status = "Hiệu lực",
        id = "2747"
    )
    session.add_all([fund, info, sec])
    session.commit()

@pytest.fixture(scope="module")
def test_app():
    app.dependency_overrides[get_db] = override_get_db
    client = TestClient(app)
    return client

@pytest.fixture(scope="module")
def id_test():
    return 2747

@pytest.fixture(scope="module")
def fund_data_test():
    return   {
        "url": "https://vsd.vn/qlqd/2747",
        "index": 0,
        "full_name": "DRAGON CAPITAL VIETFUND MANAGEMENT",
        "abbreviation": "DCVFM",
        "id": "2747",
        "address": "Level 15, Melinh Point Building, 2 Ngo Duc Ke, District 1, Ho Chi Minh City, Vietnam"
    }

@pytest.fixture(scope="module")
def info_data_test():
    return {
        "address": "Tầng 15, Tòa nhà Mê Linh Point, 02 Ngô Đức Kế, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh, Việt Nam.",
        "acronym": "DCVFM",
        "full_name": "Công ty cổ phần Quản Lý quỹ Đầu tư Dragon Capital Việt Nam",
        "fax": "28.38251489",
        "authorized_capital": "3.443.012.000.000 đồng",
        "id": "2747",
        "english_name": "DRAGON CAPITAL VIETFUND MANAGEMENT",
        "index": 0,
        "phone": "28.38251488",
        "certificate": "Số 45/UBCK-GP ngày 08/01/2009",
        "actual_capital": "3.443.012.000.000 đồng"
    }

@pytest.fixture(scope="module")
def security_data_test():
    return {
        "security_name": "Chứng chỉ Quỹ ETF DCVFMVN30",
        "isins": "VN0E1VFVN306",
        "index": 0,
        "trading_market": "HOSE",
        "status": "Hiệu lực",
        "id": "2747",
        "security_code": "E1VFVN30",
        "security_type": "Chứng chỉ quỹ",
        "administration_place": "Trụ sở chính",
        "security_url": "https://vsd.vn/s-detail/2464"
    }

@pytest.fixture(scope="module")
def id_test_null():
    return 12
