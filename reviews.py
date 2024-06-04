from bottle import post, request
import re
from datetime import datetime

def is_valid_date(date_str):
    today_date = datetime.today().strftime('%Y-%m-%d')
    date_regex = r'^\d{4}-\d{2}-\d{2}$'
    return re.match(date_regex, date_str) and date_str == today_date

def is_valid_email(email):
    email_regex = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+'
    return bool(re.fullmatch(email_regex, email))

def has_only_latin_chars(s):
    return all(ord(char) < 128 for char in s)

@post('/reviews', method="post")
def my_form():
    fields = {
        "Name": request.forms.get("NAME"),
        "Email": request.forms.get("EMAIL"),
        "Rating": request.forms.get("RATING"),
        "Comment": request.forms.get("COMMENT"),
        "Date": request.forms.get("DATE"),
    }

    errors = []

    for field, value in fields.items():
        if not value.strip():
            errors.append(f"{field} is required!")
        elif field == "Name" and not value.isalpha():
            errors.append("Name cannot consist of only digits!")
        elif field == "Email" and not is_valid_email(value):
            errors.append("Invalid email format!")
        elif field == "Rating":
            try:
                rating = int(value)
                if rating < 1 or rating > 5:
                    errors.append("Rating must be between 1 and 5!")
            except ValueError:
                errors.append("Rating must be a valid number!")
        elif field == "Comment" and not has_only_latin_chars(value):
            errors.append("Only Latin characters, numbers, and symbols are allowed in the Comment field!")
        elif field == "Date" and not is_valid_date(value):
            errors.append("Invalid date format!")

    if not errors:
        name = fields["Name"]
        email = fields["Email"]
        file_path = "newData.txt"
        
        # Check if email already exists in the file with a different name
        with open(file_path, "r", encoding="utf-8") as file:
            for line in file:
                if line.startswith("Email:") and line.split(":")[1].strip() == email:
                    next_line = next(file)
                    existing_name = next_line.split(":")[1].strip()
                    if existing_name != name:
                        errors.append("A user with this email already exists with a different name!")
                        break

        if not errors:
            with open(file_path, "a", encoding="utf-8") as file:
                for field, value in fields.items():
                    file.write(f"{field}: {value}\n")
                file.write("------------------------------------\n")

    if errors:
        return f"""   
            <script>
                alert("{errors[0]}");
                window.history.back();
            </script>
            """
    else:
        return f"""
            <script>
                alert("Your review has been added. Thanks!");
                window.location.href = "/reviews";
            </script>
            """