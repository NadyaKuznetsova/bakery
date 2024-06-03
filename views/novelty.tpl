% rebase('layout.tpl', title='Assortment', year=year)
<!DOCTYPE html>
<html>
<body class="assortment">  
 <div class="menu">
 <h2 class="categoryName">Новинки недели:</h2>
  % for category in categories:
  <h2 class="categoryName" style="color: white">{{ category['name'] }}</h2>
  <div class="row1">
      <div class="menu-row">
        % for item in category['items']:
        <div class="novelty-item" >          
          <div class="TextEl">
            <h3>{{ item['name'] }}</h3>
            <p>{{ item['description'] }}</p>
            <p>{{ item['author'] }}</p>
            <p>{{ item['date_uppend'] }}</p>
          </div>        
        </div>
        % end
      </div>
  </div>  
  % end
</div>
</body>

</html>
