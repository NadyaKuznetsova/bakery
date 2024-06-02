import datetime
import re

def check_date_format(date_text):
    try:
        datetime.datetime.strptime(date_text, '%d.%m.%Y')
        return True
    except ValueError:
        return False

def process_review_form(input_data):
    name = input_data.get('USERNAME', '')
    comment = input_data.get('COMMENT', '')
    date = input_data.get('DATE', '')

    if check_date_format(date):
        return f"Отзыв: Имя - {name}, Комментарий - {comment}, Дата - {date} (введена корректно)"
    else:
        return f"Отзыв: Имя - {name}, Комментарий - {comment}, Дата - {date} (некорректный формат даты)"