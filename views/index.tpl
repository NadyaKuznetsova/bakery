<!DOCTYPE html>
<html>
<style>
body {
background-color: orange;
text-align: center;
color: black;
font-family: Arial, Helvetica, sans-serif;
}
</style>

    <body>
    % rebase('layout.tpl', title='Home Page', year=year)

    <div class="jumbotron">
        <img src="static\images\logo.png" width="20%" height="20%">
        <p></p>
        <meta charset="UTF-8">
        <h1>Пекарня у дома</h1>
        <p class="lead">Пекарня у дома - это уютное место, где каждый день для вас пекут свежие и ароматные хлебобулочные изделия.
                        Насладитесь разнообразием вкусов и запахов, откройте для себя
                        уникальные рецепты и насладитесь теплой атмосферой нашей пекарни. Загляните к нам и окунитесь в мир настоящего домашнего уюта!</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Цех85</h2>
            <p>
                ЦЕХ85 family — одна из крупнейших сетей Санкт-Петербурга. 
                C 2016 года мы открыли более 100 пекарен, 
                а также порядка 20 других заведений общественного питания.
            </p>
            <p><a class="btn btn-default" href="https://tseh85.ru/">Ознакомиться &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Буше</h2>
            <p>«Быть живым в каждый момент времени» — это парадигма буше,
            которая лежит в основе всего, что мы делаем, аж с 10 февраля 1999 года, 
            когда открылось первое буше на улице Разъезжая дом 13.</p>
            <p><a class="btn btn-default" href="https://bushe.ru/">Ознакомиться &raquo;</a></p>
        </div>
    </div>
</body>

</html>