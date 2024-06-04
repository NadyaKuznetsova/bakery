import json

from bottle import post, re, request
from datetime import datetime
# Функция для проверки корректности даты
def is_valid_date(date_str):
    today_date = datetime.today().strftime('%Y-%m-%d')
    date_regex = r'^\d{4}-\d{2}-\d{2}$'
    return date_str == today_date and bool(re.match(date_regex, date_str))
# Функция для проверки корректности email
def is_valid_email(email):
    email_regex = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+'
    return bool(re.fullmatch(email_regex, email))
# Функция для проверки наличия только латинских символов
def has_only_latin_chars(s):
    return all(ord(char) < 128 for char in s)
# POST-метод для обработки формы с отзывом
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
        elif field == "Name" and not value.replace(' ', '').isalpha():
            errors.append("Only Latin characters allowed in the Name field!")
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
        new_review = {
            "Name": fields["Name"],
            "Email": fields["Email"],
            "Rating": fields["Rating"],
            "Comment": fields["Comment"],
            "Date": fields["Date"]
        }

        file_path = "reviewsData.json"
        
        existing_reviews = []
        try:
            with open(file_path, "r", encoding="utf-8") as file:
                existing_reviews = json.load(file)
        except FileNotFoundError:
            pass
        
        # Проверка на уникальность email в существующих отзывах и соответствие имени
        existing_emails = {review["Email"]: review["Name"] for review in existing_reviews}
        if fields["Email"] in existing_emails:
            if existing_emails[fields["Email"]] != fields["Name"]:
                errors.append("You can only write a review for your own email under the correct name!")
        else:
            existing_reviews.insert(0, new_review)

            with open(file_path, "w", encoding="utf-8") as file:
                json.dump(existing_reviews, file, ensure_ascii=False, indent=4)
    # Возвращение сообщения об ошибке или успешном добавлении отзыва
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