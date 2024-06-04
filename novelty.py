import json
import re
from bottle import post, redirect, request
from datetime import datetime, date

images_data_novelty = {}

with open('images_data_novelty.json', 'r') as file:
    images_data_novelty = json.load(file)

def check_date_format(date_str):
    try:
        date_obj = datetime.strptime(date_str, '%Y-%m-%d').date()
    except ValueError:
        return False
    return date_obj == date.today()

def check_category_format(category):
    return re.match(r"^[A-Za-z]{3,20}$", category)

def check_description_format(description):
    return re.match(r"^(?!^\p{P})*[A-Za-z\p{P}]{20,200}$", description)

@post('/novelty', method='post')
def my_form():
    username = request.forms.get('USERNAME')
    name = request.forms.get('NAME')
    category = request.forms.get('CATEGORY')
    description = request.forms.get('DESCRIPTION')
    date_ = request.forms.get('DATE_ADD')

    if not check_date_format(date_):
        return "Date format should be YYYY-MM-DD"
    
    if not check_category_format(category):
        return "Category should consist only of letters and be from 3 to 20 characters long"
    
    if not check_description_format(description):
        return "Description should consist only of letters and spaces and be from 20 to 200 characters long"

    if category in images_data_novelty:
        existing_names = [item_name for item in images_data_novelty[category] for item_name in item.keys()]
        if name not in existing_names:
            images_data_novelty[category].append({
                name: {
                    "author": username,
                    "description": description,
                    "date_updated": date_
                }
            })
        else:
            return "Element with the same name already exists in the category. Consider updating the existing element instead."
    else:
        images_data_novelty[category] = [{
            name: {
                "author": username,
                "description": description,
                "date_updated": date_
            }
        }]

    with open('images_data_novelty.json', 'w') as file:
        json.dump(images_data_novelty, file, indent=4)

