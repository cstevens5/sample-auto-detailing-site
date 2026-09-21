import uuid
from datetime import datetime

from sqlalchemy import Index, Text, UniqueConstraint, func
from sqlalchemy.dialects.postgresql import TIMESTAMP, UUID
from sqlalchemy.orm import Mapped, mapped_column

from app.models import Base


class Customer(Base):
    __tablename__ = "customers"
    __table_args__ = (
        UniqueConstraint("email", "phone_number"),
        Index("idx_customers_id", "id"),
    )

    id: Mapped[uuid.UUID] = mapped_column(UUID(as_uuid=True), primary_key=True)
    email: Mapped[str] = mapped_column(Text)
    phone_number: Mapped[str] = mapped_column(Text)
    first_name: Mapped[str] = mapped_column(Text)
    last_name: Mapped[str] = mapped_column(Text)
    created_at: Mapped[datetime | None] = mapped_column(
        TIMESTAMP(timezone=True), server_default=func.now()
    )
    created_by: Mapped[str | None] = mapped_column(Text)
    updated_at: Mapped[datetime | None] = mapped_column(
        TIMESTAMP(timezone=True), server_default=func.now()
    )
    updated_by: Mapped[str | None] = mapped_column(Text)
