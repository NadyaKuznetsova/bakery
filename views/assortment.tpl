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
    display: inline-block;
    padding: 10px;
    margin: 10px;
    text-align: center;
    border-radius: 25px;
    width: 200px;
    height: 300px;
    border: medium solid lightgray;
    opacity: 0.85;
    flex: 0 0 auto;
  }
  .ImgEl {
    width: 90%;
  }
  .menu-row{
      display: flex;
      overflow-x: auto; 
      width: 100%;
      -ms-overflow-style: none;
      scrollbar-width: none;
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
      overflow-x: auto;
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
