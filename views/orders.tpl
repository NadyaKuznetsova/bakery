<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Заказы | ООО “Пекарня у дома”</title>
</head>
<body>
    % rebase('layout.tpl', title='Assortment', year=year)

    <div class="con-scroll"> 
    <div class="orders-page"> 
        <div class="cart">
            <h2 class="categoryName">Ваш текущий заказ</h2>
            <ul id="cart-items">
                <!-- Здесь будут отображаться выбранные товары -->
            </ul>

            <h2 class="categoryName">Оформление заказа</h2>
            <form class="order-form" id="order-form">
                <input type="text" id="name" placeholder="Имя" >
                <input type="text" id="phone" placeholder="Номер телефона">
                <textarea id="comment" placeholder="Комментарий к заказу"></textarea>
                <button type="submit">Оформить заказ</button>
            </form>
            
        </div>

        <div><div class="order-history">
        <h2 class="categoryName">История заказов</h2>
        
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

    
    document.getElementById('order-form').addEventListener('submit', function(e) {
        e.preventDefault();
        const formData = new FormData(this);
        fetch('/place_order', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            // Handle any UI updates after placing the order
        })
        .catch(error => {
            console.error('Error placing order:', error);
        });
    });

</script>

