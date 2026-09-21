# app/api/v1/api.py
from fastapi import APIRouter

from app.api.v1.endpoints import customers

# Create the main v1 router container
api_router = APIRouter()

# Include feature-specific sub-routers
api_router.include_router(customers.router, prefix="/customers", tags=["Customers"])
