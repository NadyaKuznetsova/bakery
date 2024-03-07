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
    background-color: lightgrey;
    padding: 10px;
    margin: 10px;
    text-align: center;
    border-radius: 5px;
    width: 250px;
    height: 300px;
  }
  .ImgEl {
    width: 200px;
    height: 180px;
  }
</style>
</head>

<body>

<style>
.menu-row{
   display: flex;
}
</style>
<div class="menu">
  <div class="menu-row">
    <div class="menu-item">
      <img class="ImgEl" src="static\images\menu\istockphoto-903494838-612x612.jpg" alt="Burger">
      <h3>Burger</h3>
      <p>$5.99</p>
    </div>
    <div class="menu-item">
      <img class="ImgEl" src="static\images\menu\istockphoto-903494838-612x612.jpg" alt="Pizza">
      <h3>Pizza</h3>
      <p>$8.99</p>
    </div>
    <div class="menu-item">
      <img class="ImgEl" src="static\images\menu\istockphoto-903494838-612x612.jpg" alt="Salad">
      <h3>Salad</h3>
      <p>$4.99</p>
    </div>
    <div class="menu-item">
      <img class="ImgEl" src="static\images\menu\istockphoto-903494838-612x612.jpg" alt="Salad">
      <h3>Salad</h3>
      <p>$4.99</p>
    </div>
  </div>
  
</div>

</body>
</html>
