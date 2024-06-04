<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Заказы | ООО “Пекарня у дома”</title>
</head>
<body>
    % rebase('layout.tpl', title='Assortment', year=year)

    <div class="con-scroll"> 
    <div class="orders-page"> 
        <div class="cart">
            <h2 class="categoryName">Your current order</h2>
            <ul id="cart-items">
            % for item in current_order:
                <li>{{ item['name'] }} - {{ item['price'] }}</li>
                <button class="delete-item">Удалить</button>
            % end
            </ul>

            <h2 class="categoryName">Place your order</h2>
            <form class="order-form" id="order-form">
                <input type="text" name="name" placeholder="Name">
                <input type="text" name="phone" placeholder="Phone number">
                <textarea name="comment" placeholder="Order comments"></textarea>
                <button type="submit">Confirm!</button>
            </form>
        </div>

        <div><div class="order-history">
        <h2 class="categoryName" style="margin-left: 90px;">Orders history</h2>
        
            <ul id="order-history-list">
                % for order in order_history:
                    <li>
                    %print(type(order))
                        <strong>Name:</strong> {{ order['name'] }} | <strong>Phone:</strong> {{ order['phone'] }}<br>
                        <strong>Comment:</strong> {{ order['comment'] }} <br>
                        <strong>Items:</strong>
                        <ul>
                            % for item in order['items']:
                                <li>{{ item['name'] }} - {{ item['price'] }}</li>
                            % end
                        </ul>
                    </li>
                % end
            </ul>
        </div>
        </div>

    </div>
    </div>

    <script src="/static/script.js"></script>
</body>
</html>

<script>
    document.querySelectorAll('.delete-item').forEach(function(button) {
    button.addEventListener('click', function() {
        const itemName = this.previousElementSibling.textContent.split(' - ')[0];
        removeFromCart(itemName);
        this.parentElement.remove(); // Remove the item's <li> element
        setTimeout(() => {
                location.reload();
            }, 500); // Reload after 1 second (adjust timing as needed)
    });
});

    function removeFromCart(itemName) {
        fetch('/remove_from_cart', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: new URLSearchParams({ 'item_name': itemName })
        })
        .then(response => response.json())
        .then(data => {
            console.log(data.message);
        })
        .catch(error => {
            console.error('Ошибка при удалении товара из корзины:', error);
        });
    }

    
    document.getElementById('order-form').addEventListener('submit', function(e) {
    e.preventDefault();
    const formData = new FormData(this);
    const name = formData.get('name');
    const phone = formData.get('phone');

    if (!validateName(name)) {
        return;
    }

    if (!validatePhone(phone)) {
        return;
    }

    fetch('/place_order', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        // Handle any UI updates after placing the order
        alert('Order placed successfully!');
        setTimeout(() => {
                location.reload();
            }, 500); // Reload after 1 second (adjust timing as needed)
    })
    .catch(error => {
        console.error('Error placing order:', error);
        alert('Error placing order. Please try again later.');
    });
});

    function validateName(input) {
        const nameRegex = /[A-Za-z\s]{3,20}$/;
        if (!nameRegex.test(input)) {
            alert("Invalid name. Please enter only letters and spaces.");
            return false;
        }
        return true;
    }

    function validatePhone(input) {
        const phoneRegex = /^(?:\+7|8)\d{10}$/;
        if (!phoneRegex.test(input)) {
            alert("Invalid phone number. Please enter a valid Russian phone number in the format +7xxxxxxxxxx.");
            return false;
        }
        return true;
    }


</script>

