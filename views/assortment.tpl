% rebase('layout.tpl', title='Assortment', year=year)
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .menu-item {
    background-color: white;
    padding: 10px;
    margin: 10px;
    text-align: center;
    border-radius: 25px;
    width: 25%;
    height: 300px;
    border: medium solid lightgray;
    opacity: 0.85;
    vertical-align: center;
  }
  .ImgEl {
    width: 90%;
  }
  .menu-row{
      display: flex;
  }
  .menu{
      padding: 100px;
      overflow: hidden;
      height: 550px;
      overflow-y: scroll; 
      bottom: 0;
      padding: 20px;
      margin-top: 60px;
      -ms-overflow-style: none;
      scrollbar-width: none;
  }
  .TextEl{
      vertical-align: bottom;
  }
  .menu-item:hover {
      opacity: 1;
  }
}
</style>
</head>
<body>
  <div class="menu">
    % for category in categories:
    <h2 style="color: white">{{ category['name'] }}</h2>
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
    % end
  </div>
</body>

</html>
