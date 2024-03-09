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
  % for j in range((len(images) + 3) // 4):
  <div class="menu-row">
    % for i in range(j*4, min((j+1)*4, len(images))):
    <div class="menu-item">
      <img class="ImgEl" src="{{ images[i] }}" alt="{{ captions[i] }}">
      <h3>{{ captions[i] }}</h3>
      <p>{{ prices[i] }}</p>
    </div>
    % end
  </div>
  % end
</div>iv>

</body>
</html>
