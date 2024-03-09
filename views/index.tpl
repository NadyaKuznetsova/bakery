<!DOCTYPE html>
<html>
    <body>
    % rebase('layout.tpl', title='Home Page', year=year)
<style>
.row {
    color: white;
    text-align: center; 
    padding: 100px;
}
</style>

<style>
.btn{
    background-color: rgba(255, 178, 81, 0.5); 
    color: white;
    font-size: 110%;
    padding: 10px 20px;
}
</style>

<style>
.lead{
    font-size: 1em;
}
</style>

<style>
.col-md-4{
    float: right; 
    background-color: rgba(147, 88, 13, 0.5); 
    border-radius: 30px;
    padding: 5px; 
    text-align: center;
    height: 50%; 
    width: 30%;
}
</style>


    <div class="row"  style="text-align: center;">
        <div style="display: flex; justify-content: center; align-items: center;">
            <img src="static\images\logo.png" width="20%" height="20%">
            <h1 style="font-size: 5em; text-shadow: 2px 2px 0 #000;">Пекарня у дома</h1>
            
        </div>
        <div style="display: flex; justify-content: center;">
            <div style="background-color: orange; height: 2px; width: 60%;"></div>
        </div>
        <p class="lead">Пекарня у дома - это уютное место, где каждый день для вас пекут свежие и ароматные хлебобулочные изделия.
                        Насладитесь разнообразием вкусов и запахов, откройте для себя
                        уникальные рецепты и насладитесь теплой атмосферой нашей пекарни. 
                        Загляните к нам и окунитесь в мир настоящего домашнего уюта!</p>
        <p><a class="btn" href="/assortment">Ассортимент &raquo;</a></p>
        <div class="col-md-4" style="float: left">
            <h2>Цех85</h2>
            <p class="lead">
                ЦЕХ85 family — одна из крупнейших сетей Санкт-Петербурга. 
                C 2016 года мы открыли более 100 пекарен, 
                а также порядка 20 других заведений общественного питания.
            </p>
            <p><a class="btn" href="https://tseh85.ru/">Ознакомиться &raquo;</a></p>
        </div>
        <div class="col-md-4" style="float: center">
            <h2>Буше</h2>
            <p>«Быть живым в каждый момент времени» — это парадигма буше,
            которая лежит в основе всего, что мы делаем, аж с 10 февраля 1999 года, 
            когда открылось первое буше на улице Разъезжая дом 13.</p>
            <p><a class="btn" href="https://bushe.ru/">Ознакомиться &raquo;</a></p>
        </div>
    </div>
</body>

</html>