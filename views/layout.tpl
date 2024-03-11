<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="ru">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - Пекарня у дома</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <div class="background">
        <img src="static\images\fon2.jpeg" width="100%" height="100%">
    </div>
    <div class="navbar navbar-fixed-top">
        <div class="container">
        <li><a href="/home"><img href="/" class="navbar-brand" src="static\images\logo.png" width="10%" height="10%" left=0></a></li>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav" style="float: right;">
                    
                    <li><a href="/home"  class="textBold">Главная</a></li>
                    <li><a href="/assortment"  class="textBold">Ассортимент</a></li>
                    <li><a href="/contact"  class="textBold">О нас</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container body-content">

        {{!base}}
        <hr />
        <footer  style="color: white; float: right;">
            <p>&copy; {{ year }} - Наша пекарня</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
