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
</style>
</head>
<body>

<div class="menu">
  <div class="menu-row">
    % for i in range(len(images)):
    <div class="menu-item">
      <img class="ImgEl" src="{{ images[i] }}" alt="{{ captions[i] }}">
      <h3>{{ captions[i] }}</h3>
      <p>{{ prices[i] }}</p>
    </div>
    % end
  </div>
</div>
</body>
</html>
