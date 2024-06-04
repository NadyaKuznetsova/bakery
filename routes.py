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

from Menu import images_data



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

from novelty import images_data_novelty

@route('/novelty')
@view('novelty')
def home():
    categories = []
    
    for category, items in images_data_novelty.items():
        category_data = {
            'name': category,
            'items': []
        }
        
        for item in items:
            for item_name, data in item.items():
                item_details = {
                    'name': item_name,
                    'author': data['author'],
                    'description': data['description'],
                    'date_updated': data['date_updated']
                }
                category_data['items'].append(item_details)
        
        categories.append(category_data)
    
    return dict(
        title='Novelty',
        categories=categories,
        year=datetime.now().year
    )
