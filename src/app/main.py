#!/bin/python3

# External
from fastapi import FastAPI

# Internal
from app.api import route

# Declare
app = FastAPI()

# Add route
app.include_router(route.ROUTER)