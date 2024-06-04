from bottle import post, request
import re
from datetime import datetime
# Функция для проверки корректности формата даты
def is_valid_date(date_str):
    today_date = datetime.today().strftime('%Y-%m-%d')
    date_regex = r'^\d{4}-\d{2}-\d{2}$'
    return re.match(date_regex, date_str) and date_str == today_date
# Функция для проверки корректности формата email
def is_valid_email(email):
    email_regex = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+'
    return bool(re.fullmatch(email_regex, email))
# Функция для проверки наличия только латинских символов
def has_only_latin_chars(s):
    return all(ord(char) < 128 for char in s)
# Обработчик POST запроса для отправки отзыва
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
    # Проверка каждого поля на наличие ошибок
    for field, value in fields.items():
        if not value.strip():
            errors.append(f"{field} is required!")
        elif field == "Name" and not value.isalpha():
            errors.append("Only Latin characters")
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
        file_path = "reviewsData.txt"

        # Чтение всех существующих отзывов из файла
        with open(file_path, "r", encoding="utf-8") as file:
            existing_reviews = file.readlines()

        # Добавление нового отзыва в начало списка
        new_review = [
            f"Name: {fields['Name']}",
            f"Email: {fields['Email']}",
            f"Rating: {fields['Rating']}",
            f"Comment: {fields['Comment']}",
            f"Date: {fields['Date']}",
            f"------------------------------------\n"
        ]
        
        existing_reviews.insert(0, "\n".join(new_review))

        # Запись всех отзывов обратно в файл
        with open(file_path, "w", encoding="utf-8") as file:
            file.write("\n".join(existing_reviews))

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