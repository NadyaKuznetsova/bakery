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


bakeries_data = {
    '1': {
        'address': 'ул. Коллонтай, 5/1',
        'working_hours': '09:00-20:00',
        'nearest_metro': 'Ближайшая станция метро 1'
    },
    '2': {
        'address': 'просп. Елизарова, 3',
        'working_hours': '8:00-19:00',
        'nearest_metro': 'Ближайшая станция метро 2'
    },
    '3': {
        'address': 'Софийская ул., 57',
        'working_hours': '10:00-21:00',
        'nearest_metro': 'Ближайшая станция метро 3'
    },
    '4': {
        'address': 'ул. Седова, 89, корп. 1',
        'working_hours': '10:00-21:00',
        'nearest_metro': 'Ближайшая станция метро 4'
    },
    '5': {
        'address': 'Московский просп., 145А',
        'working_hours': '10:00-21:00',
        'nearest_metro': 'Ближайшая станция метро 5'
    }
}

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
            'nearest_metro': data['nearest_metro']
        }
        bakeries.append(bakery)

    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/assortment')
@view('assortment')
def about():
    """Renders the about page."""
    return dict(
        title='assortment',
        message='Your application description page.',
        year=datetime.now().year
    )
