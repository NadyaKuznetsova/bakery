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
            'prices': ['120 руб.']
        },
        'Клубничный пирог': {
            'image_paths': ['static/images/menu/strawberry-tart.jpg'],
            'prices': ['120 руб.']
        },
        'Медовик': {
            'image_paths': ['static/images/menu/medovik.jpg'],
            'prices': ['130 руб.']
        },
        'Трюфельный торт': {
            'image_paths': ['static/images/menu/chocolate-raspberry-truffle-cake.jpg'],
            'prices': ['150 руб.']
        }
    },
    'Булочки': {
        'Слойка с вишней': {
            'image_paths': ['static/images/menu/buns-with-cherries.jpg'],
            'prices': ['90 руб.']
        },
        'Круассан': {
            'image_paths': ['static/images/menu/kruassan.jpg'],
            'prices': ['80 руб.']
        },
        'Пончик с шоколадом': {
            'image_paths': ['static/images/menu/ponchik.jpg'],
            'prices': ['70 руб.']
        },
        'Пирожное "Эклер"': {
            'image_paths': ['static/images/menu/aclere.jpg'],
            'prices': ['100 руб.']
        }
    },
     'Кофе': {
        'Капучино': {
            'image_paths': ['static/images/menu/cappuccino.jpg'],
            'prices': ['100 руб.']
        },
        'Латте': {
            'image_paths': ['static/images/menu/latte.jpg'],
            'prices': ['110 руб.']
        },
        'Эспрессо': {
            'image_paths': ['static/images/menu/espresso.jpg'],
            'prices': ['90 руб.']
        }
    },
    'Коктейли': {
        'Фраппе': {
            'image_paths': ['static/images/menu/frappe.jpg'],
            'prices': ['120 руб.']
        },
        'Смузи': {
            'image_paths': ['static/images/menu/smoothie.jpg'],
            'prices': ['130 руб.']
        },
        'Молочный коктейль с шоколадом': {
            'image_paths': ['static/images/menu/chocolate-milkshake.jpg'],
            'prices': ['140 руб.']
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