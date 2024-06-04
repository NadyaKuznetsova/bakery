from bottle import route, post, view, request, static_file
import json
from datetime import datetime



# Initialize current_order as an empty list
current_order = []

@post('/add_to_cart')
def add_to_cart():
    item_name = request.forms.get('item_name')
    item_price = request.forms.get('item_price')

    # Append the item details to the current_order list
    current_order.append({'name': item_name, 'price': item_price})

    return {'message': 'Item added to cart'}

@post('/remove_from_cart')
def remove_from_cart():
    item_name = request.forms.get('item_name')
    for item in current_order:
        if item['name'] == item_name:
            current_order.remove(item)
            break
    return {'message': 'Item removed from cart'}


@post('/place_order')
def place_order():
    name = request.forms.get('name')
    phone = request.forms.get('phone')
    comment = request.forms.get('comment')

    try:
        with open('order_history.json', 'r', encoding='utf-8') as file:
            order_history = json.load(file)
    except FileNotFoundError:
        order_history = {}  # Start with an empty dictionary if the file doesn't exist

    order_counter = len(order_history) + 1

    order_data = {
        f'order#{order_counter}': {
            'name': name,
            'phone': phone,
            'comment': comment,
            'items': current_order  # Include the current_order items in the order data
        }
    }

    order_history.update(order_data)

    with open('order_history.json', 'w', encoding='utf-8') as f:
        json.dump(order_history, f, indent=4, ensure_ascii=False)

    # Clear the current_order list after placing the order
    current_order.clear()

    return {'message': 'Order placed successfully'}



from datetime import datetime

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

@route('/orders')
@view('orders')
def orders():
    try:
        with open('order_history.json',  encoding='utf-8') as f:
            order_history = list(json.load(f).values())
    except (json.JSONDecodeError, FileNotFoundError):
        order_history = []

    return dict(
        order_history=order_history,
        current_order=current_order,
        year=datetime.now().year,
        title='Orders'
    )


