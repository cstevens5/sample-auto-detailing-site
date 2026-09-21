from typing import Annotated

import phonenumbers
from pydantic_extra_types.phone_numbers import PhoneNumberValidator

E164PhoneNumber = Annotated[
    str | phonenumbers.PhoneNumber,
    PhoneNumberValidator(number_format="E164"),
]
