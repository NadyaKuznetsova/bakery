"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('home')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

from Addresses import bakeries_data

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    bakeries = []

    for bakery_id, data in bakeries_data.items():
        bakery = {
            'id': bakery_id,
            'address': data['address'],
            'working_hours': data['working_hours'],
            'nearest_metro': data['nearest_metro'],
            'lat':data['lat'],
            'lon':data['lon']
        }
        bakeries.append(bakery)

    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year,
        bakeries=bakeries
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


@route('/orders')
@view('orders')
def orders():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )