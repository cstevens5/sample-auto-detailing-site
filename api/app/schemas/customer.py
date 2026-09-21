from pydantic import BaseModel, EmailStr
from uuid import UUID

from app.schemas.phone_number import E164PhoneNumber


class CreateCustomerRequest(BaseModel):
    email: EmailStr
    phone_number: E164PhoneNumber
    first_name: str
    last_name: str


class CustomerResponsetModel(BaseModel):
    id: UUID
    email: str
    phone_number: str
    first_name: str
    last_name: str
