
import re

def validate_name(name):
    pattern = r"^[A-Za-z\s]{3,20}$"
    return re.match(pattern, name)

def validate_phone_number(phone):
    pattern = r"^(?:\+7|8)\d{10}$"
    return re.match(pattern, phone)
