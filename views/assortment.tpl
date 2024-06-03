% rebase('layout.tpl', title='Assortment', year=year)
<!DOCTYPE html>
<html>
<body class="assortment">
  <div class="menu">
  % for category in categories:
  <h2 class="categoryName" style="color: white">{{ category['name'] }}</h2>
  <div class="row1">
      <div class="menu-row">
        % for item in category['items']:
        <div class="menu-item" >
          <img class="ImgEl" src="{{ item['image_path'] }}" alt="{{ item['name'] }}">
          <div class="TextEl">
            <h3>{{ item['name'] }}</h3>
            <p>{{ item['price'] }}</p>
          </div>       
            <button class="add-to-cart-btn" data-item="{{ item['name'] }}" data-price="{{ item['price'] }}">
                <img width="30px" height="30px" src="static/images/icons/add_24dp_FILL0_wght400_GRAD0_opsz24.png"/>
            </button>
        </div>
        % end
      </div>
  </div>  
  % end

</body>


<script>
document.addEventListener('DOMContentLoaded', function() {
    const addToCartButtons = document.querySelectorAll('.add-to-cart-btn');
    addToCartButtons.forEach(button => {
        button.addEventListener('click', function() {
            const itemName = this.dataset.item;
            const itemPrice = this.dataset.price; // Get the item price from data attribute
            addToCart(itemName, itemPrice);
        });
    });
    
    function addToCart(itemName, itemPrice) {
    fetch('/add_to_cart', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `item_name=${itemName}&item_price=${itemPrice}`
    })
    .then(response => response.json())
    .then(data => {
        const cartItemsList = document.getElementById('cart-items');
        const newItem = document.createElement('li');
        newItem.textContent = `${itemName} - ${itemPrice}`; // Display both name and price
        cartItemsList.appendChild(newItem);
    })
    .catch(error => {
        console.error('Error adding item to cart:', error);
    });
}

});
</script>

</html>
