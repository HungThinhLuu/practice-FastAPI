FROM python:latest

WORKDIR /usr/src/app

ENV POSTGRESQL_URI=postgresql://fastapi:123456@postgres-db:5432/fund_manager

COPY ./requirements.txt ./requirements.txt

RUN python -m pip install -r requirements.txt
