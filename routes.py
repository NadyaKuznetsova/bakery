"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

images_data = {
    'Торты': {
        'Шоколадный торт': {
            'image_paths': ['static/images/menu/istockphoto-903494838-612x612.jpg'],
            'prices': ['$5.99']
        },
        'Клубничный пирог': {
            'image_paths': ['static/images/menu/strawberry-tart.jpg'],
            'prices': ['$8.99']
        }
    },
    'Булочки': {
        'Слойка с вишней': {
            'image_paths': ['static/images/menu/buns-with-cherries.jpg'],
            'prices': ['$4.99']
        }
    }
}


@route('/assortment')
@view('assortment')
def assortment():
    categories = []
    
    for category, items in images_data.items():
        category_data = {
            'name': category,
            'items': []
        }
        
        for item_name, data in items.items():
            item = {
                'name': item_name,
                'image_path': data['image_paths'][0],
                'price': data['prices'][0]
            }
            category_data['items'].append(item)
        
        categories.append(category_data)
    
    return dict(
        title='Assortment',
        categories=categories,
        year=datetime.now().year
    )