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
    height: 30%;
    border: medium solid lightgray;
  }
  .ImgEl {
    width: 90%;
    height: 80%;
  }
  .menu-row{
   display: flex;
  }
  .menu{
      padding: 100px;
  }
</style>
</head>
<body>

<div class="menu">
<body>
  <div class="menu">
    % for category in categories:
    <h2>{{ category['name'] }}</h2>
    <div class="menu-row">
      % for item in category['items']:
      <div class="menu-item">
        <img class="ImgEl" src="{{ item['image_path'] }}" alt="{{ item['name'] }}">
        <h3>{{ item['name'] }}</h3>
        <p>{{ item['price'] }}</p>
      </div>
      % end
    </div>
    % end
  </div>
</body>

</html>
