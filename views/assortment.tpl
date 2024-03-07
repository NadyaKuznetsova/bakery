<!DOCTYPE html>
<html>
 <style>
    #scroll-container {
    width: 100%;
    height: 200px;
    overflow: scroll;
    }
 </style>

<head>
    <meta charset="UTF-8">
</head>

<body>
    % rebase('layout.tpl', title='Assortment', year=year)

    <div class="jumbotron">
        <p></p>
        <h1>Ассортимент</h1>
        <p class="lead">ляля, тополя</p>
        
    </div>
   
    <div id="scroll-container">

    <p>Пример текста</p>

    </div>
    
</body>
</html>