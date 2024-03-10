% rebase('layout.tpl', title='Assortment', year=year)
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

<body class="assortment">
  <div class="menu">
  % for category in categories:
  <h2 style="color: white">{{ category['name'] }}</h2>
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
</div>
</body>

</html>
