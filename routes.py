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

images = ['static/images/menu/istockphoto-903494838-612x612.jpg', 'static/images/menu/istockphoto-903494838-612x612.jpg',
          'static/images/menu/istockphoto-903494838-612x612.jpg','static/images/menu/istockphoto-903494838-612x612.jpg',
          'static/images/menu/istockphoto-903494838-612x612.jpg','static/images/menu/istockphoto-903494838-612x612.jpg']
captions = ['Burger', 'Pizza', 'Salad',  'Pizza',  'Pizza',  'Pizza']
prices = ['$5.99', '$8.99', '$4.99', '$4.99', '$4.99', '$4.99']


@route('/assortment')
@view('assortment')
def assortment():
    return dict(
        title='Assortment',
        images=images,
        captions=captions,
        prices=prices,
        year=datetime.now().year
    )
