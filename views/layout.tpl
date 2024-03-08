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
<style>
.background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    background-image: url("static/images/fon2.jpeg");
    background-size: cover;
    background-position: center;
}
</style>
<style>
    @font-face {
        font-family: 'MenuFont';
        src: url('static/fonts/SOGNER_SE_Heavy.otf');
    }

    a {
        font-family: 'MenuFont';
        font-size: 20px;
    }
</style>

    <div class="background">
        <img src="static\images\fon2.jpeg" width="100%" height="100%">
    </div>
    <div class="navbar navbar-inverse navbar-fixed-top" style= "background-color: #3B2323; height: 13%;">
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
                    
                    <li><a href="/home"  style="color: white; font-weight: bold;">Главная</a></li>
                    <li><a href="/assortment"  style="color: white; font-weight: bold;">Ассортимент</a></li>
                    <li><a href="/contact"  style="color: white; font-weight: bold;">О нас</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container body-content">

        {{!base}}
        <hr />
        <footer>
            <p>&copy; {{ year }} - Наша пекарня</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
