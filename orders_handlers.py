from bottle import route, post, view, request, static_file
import json
from datetime import datetime


current_order = []


@post('/add_to_cart')
def add_to_cart():
    item_name = request.forms.get('item_name')
    item_price = request.forms.get('item_price')  # Add this line to get the item price
    current_order.append({'name': item_name, 'price': item_price})
    return {'message': 'Item added to cart'}

import os

import json
from bottle import route, post, view, request, static_file
from datetime import datetime

current_order = []

@post('/add_to_cart')
def add_to_cart():
    item_name = request.forms.get('item_name')
    item_price = request.forms.get('item_price')  # Add this line to get the item price
    current_order.append({'name': item_name, 'price': item_price})
    return {'message': 'Item added to cart'}


@post('/place_order')
def place_order():
    name = request.forms.get('name')
    phone = request.forms.get('phone')
    comment = request.forms.get('comment')
    items_list = request.forms.get('items')  # Get the items list

    if items_list is not None:
        items_list = json.loads(items_list)  # Parse the items list as JSON
    else:
        items_list = []  # Set items list to an empty list if it is None

    try:
        with open('order_history.json', 'r') as file:
            order_history = json.load(file)
    except FileNotFoundError:
        order_history = {}  # If file doesn't exist, start with an empty dictionary

    order_counter = len(order_history) + 1  # Increment the order counter

    order_data = {
        f'order#{order_counter}': {
            'name': name,
            'phone': phone,
            'comment': comment,
            'items': items_list
        }
    }

    order_history.update(order_data)  # Add the new order to the existing order history

    with open('order_history.json', 'w') as f:
        json.dump(order_history, f, indent=4, ensure_ascii=False)

    return {'message': 'Order placed successfully'}



@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')