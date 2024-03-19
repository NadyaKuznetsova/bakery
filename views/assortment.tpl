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
        </div>
        % end
      </div>
  </div>  
  % end

</body>

</html>
