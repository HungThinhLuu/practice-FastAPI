FROM python:3.9.16-alpine

WORKDIR /usr/src/app

COPY ./requirements.txt /usr/src/app/requirements.txt

COPY ./app /usr/src/app

RUN pip install -r /usr/src/app/requirements.txt