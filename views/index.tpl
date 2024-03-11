<!DOCTYPE html>
<html>
    <body>
    % rebase('layout.tpl', title='Home Page', year=year)
    <div class="scroll">
    
        <div class="row">
            <div class="center">
                <img class="BigLogo" src="static\images\logo.png" width="18%" height="18%">
                <h1 class="heading">Пекарня у дома</h1>
            </div>
            <div class="line1">
                <div class="line2"></div>
            </div>
            <p class="lead">Пекарня у дома - это уютное место, где каждый день для вас пекут свежие и ароматные хлебобулочные изделия.
                            Насладитесь разнообразием вкусов и запахов, откройте для себя
                            уникальные рецепты и насладитесь теплой атмосферой нашей пекарни. 
                            Загляните к нам и окунитесь в мир настоящего домашнего уюта!</p>
            <p><a class="btn" href="/assortment">Ассортимент &raquo;</a></p>
            <div class="text-dop-left">
            <h2><a class="btnOnclick" onclick="toggleContent('text-dop-left-p')">Цех85 &#9658;</a></h2>
            <p class="text-dop-left-p">
                ЦЕХ85 family — одна из крупнейших сетей Санкт-Петербурга. 
                C 2016 года мы открыли более 100 пекарен, 
                а также порядка 20 других заведений общественного питания.
                <br>
                <a class="btn" href="https://tseh85.ru/">Ознакомиться &raquo;</a>
            </p>
        </div>

        <div class="text-dop-right">
            <h2><a class="btnOnclick" onclick="toggleContent('text-dop-right-p')">Буше &#9658;</a></h2>
            <p class="text-dop-right-p">
                «Быть живым в каждый момент времени» — это парадигма буше,
                которая лежит в основе всего, что мы делаем, аж с 10 февраля 1999 года.
                <br>
                <a class="btn" href="https://bushe.ru/">Ознакомиться &raquo;</a>
            </p>
        </div>

        <script>
        function toggleContent(className) {
            var content = document.querySelector('.' + className);
            if (content.style.display === 'none') {
                content.style.display = 'block';
            } else {
                content.style.display = 'none';
            }
        }
        </script>
        </div>
    </div>
</body>

</html>