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

@route('/assortment')
@view('assortment')
def about():
    """Renders the about page."""
    return dict(
        title='assortment',
        message='Your application description page.',
        year=datetime.now().year
    )
