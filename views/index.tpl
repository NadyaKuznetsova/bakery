﻿<!DOCTYPE html>
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
        <img src="static\images\icn.jpg" width="10%" height="10%">
        <p></p>
        <meta charset="UTF-8">
        <h1>Пекарня у дома</h1>
        <p class="lead">Пекарня у дома - это уютное место, где каждый день для вас пекут свежие и ароматные хлебобулочные изделия.
                        Насладитесь разнообразием вкусов и запахов, откройте для себя
                        уникальные рецепты и насладитесь теплой атмосферой нашей пекарни. Загляните к нам и окунитесь в мир настоящего домашнего уюта!</p>
        <p><a href="http://bottlepy.org/docs/dev/index.html" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Цех85</h2>
            <p>
                ЦЕХ85 family — одна из крупнейших сетей Санкт-Петербурга. 
                C 2016 года мы открыли более 100 пекарен, 
                а также порядка 20 других заведений общественного питания. 
                ЦЕХ85 family — это семья, объединяющая целую группу разных проектов. 
                Среди них: пекарни ЦЕХ85, блинные Батенька, ферма Медовое, сыры Fromagerie d’origine и сеть булочных Сёстры.
            </p>
            <p><a class="btn btn-default" href="https://tseh85.ru/">Ознакомиться»</a></p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>The Python Package Index is a repository of software for the Python programming language.</p>
            <p><a class="btn btn-default" href="https://pypi.python.org/pypi">Learn more &raquo;</a></p>
        </div>
    </div>
</body>

</html>