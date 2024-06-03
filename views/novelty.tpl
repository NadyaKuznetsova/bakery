% rebase('layout.tpl', title='Assortment', year=year)
<!DOCTYPE html>
<html>
<body class="assortment">  
 <div class="menu">
 <p><input id="showFormBtn" class="btn btn-default" type="submit" value="Добавить позицию"></p>
 <p><input id="hideFormBtn" class="btn btn-default" type="submit" value="Скрыть"></p>
 <form id="positionForm" method="post">
        <p><input class="input_info" type="text" size="50" name="USERNAME" placeholder="Ваше имя/ник" required></p> 
        <p><input class="input_info" type="text" size="50" name="CATEGORY" placeholder="Категория" required></p>
        <p><input class="input_info" type="text" size="50" name="NAME" placeholder="Название позиции" required></p> 
        <p><textarea class="input_info" type="text" cols="50" name="DESCRIPTION" placeholder="Описание" required></textarea></p>
        <p><input class="input_info" type="text" size="50" name="DATE_ADD" placeholder="Дата" required></p>
        <p><input class="btn btn-default" type="submit" value="Отправить"></p>
</form>
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


<script>
    const showFormBtn = document.getElementById('showFormBtn');
    const positionForm = document.getElementById('positionForm');
    const hideFormBtn = document.getElementById('hideFormBtn');

    showFormBtn.addEventListener('click', function() {
        positionForm.style.display = 'block';
        hideFormBtn.style.display = 'block';
        showFormBtn.style.display = 'none';
    });

    hideFormBtn.addEventListener('click', function() {
        positionForm.style.display = 'none';
        hideFormBtn.style.display = 'none';
        showFormBtn.style.display = 'block';
    });
</script>

</html>
