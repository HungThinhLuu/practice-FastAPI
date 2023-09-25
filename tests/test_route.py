#!/bin/python3

def test_get_fund_manager(test_app, fund_data_test):

    response = test_app.get("/fund-manager")

    data: dict = response.json()[0]
    assert response.status_code == 200
    assert len(response.json()) == 1
    assert data == fund_data_test

def test_get_fund_information(test_app, id_test, info_data_test):

    response = test_app.get(f"/fund-manager/{id_test}")

    data: dict = response.json()[0]
    assert response.status_code == 200
    assert len(response.json()) == 1
    assert data == info_data_test

def test_get_fund_sercurity(test_app, id_test, security_data_test):

    response = test_app.get(f"/fund-manager/{id_test}/securities")

    data: dict = response.json()[0]
    assert response.status_code == 200
    assert len(response.json()) == 1
    assert data == security_data_test

def test_get_fund_information_null(test_app, id_test_null):

    response = test_app.get(f"/fund-manager/{id_test_null}")

    assert response.status_code == 200
    assert len(response.json()) == 0

def test_get_fund_sercurity_null(test_app, id_test_null):

    response = test_app.get(f"/fund-manager/{id_test_null}/securities")

    assert response.status_code == 200
    assert len(response.json()) == 0