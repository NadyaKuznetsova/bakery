import json
import re
from bottle import post, request
from datetime import datetime, date

images_data_novelty = {}

with open('images_data_novelty.json', 'r') as file:
    images_data_novelty = json.load(file)

@post('/novelty', method='post')
def my_form():
    username = request.forms.get('USERNAME')
    name = request.forms.get('NAME')
    category = request.forms.get('CATEGORY')
    description = request.forms.get('DESCRIPTION')
    date_ = request.forms.get('DATE_ADD')

    try:
        date_obj = datetime.strptime(date_, '%Y-%m-%d').date()
    except ValueError:
        return "Формат даты должен быть ГГГГ-ММ-ДД"
    
    if date_obj != date.today():
        return "Дата должна быть сегодняшней"
    
    if not re.match(r"^[A-Za-zА-Яа-я]{3,20}$", category):
        return "Категория должна состоять только из букв и быть от 3 до 20 символов в длину"
    
    # Проверка, существует ли уже такая категория
    if category in images_data_novelty:
        images_data_novelty[category].append({
            'USERNAME': username,
            'NAME': name,
            'DESCRIPTION': description,
            'DATE_ADD': date_
        })
    else:
        images_data_novelty[category] = [{
            'USERNAME': username,
            'NAME': name,
            'DESCRIPTION': description,
            'DATE_ADD': date_
        }]

    # Запись обновленных данных обратно в файл
    with open('images_data_novelty.json', 'w') as file:
        json.dump(images_data_novelty, file, indent=4)

    return "Добавлен"
