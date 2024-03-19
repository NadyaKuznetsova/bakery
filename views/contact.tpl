<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Контакты | ООО “Пекарня у дома”</title>
</head>
    
<body >
    % rebase('layout.tpl', title='contacts', year=year)
     
    <div class="con-scroll"> 
    <div class="contact-page"> 
    <!-- Место для карты и адреса -->
        <div class="map-and-address">
            <div class="map-placeholder">
                <div class="loader">
                <script src="static/scripts/loader.js" ></script>
                <script src="static/scripts/map.js" ></script>
                </div>
            </div>

            <div class="address-list">
                % for bakery in bakeries:
                <div class="bakery-info">
                    <h2>{{ bakery['address'] }}</h2>
                    <p>{{ bakery['working_hours'] }}</p>
                    <p>{{ bakery['nearest_metro'] }}</p>
                </div>
                % end
            </div>
        </div>
         
        <!-- Навигационные точки -->
        <div class="navigation-dots">
            <p><a class="dot" href="https://vk.com/guap_ru">
                <img src="\static\images\icons\vk_white.png" class="image-hover"></a></p>
            <p><a class="dot" href="https://t.me/s/new_guap">
                <img src="\static\images\icons\telegram2.png" class="image-hover"></a></p> 
            <p><a class="contact-links"  href="mailto:admin@bakerybyhome.ru" >admin@bakerybyhome.ru
                </a></p>
            <p><a class="contact-links" href="tel:89002005738" >8(900)200-57-38
                </a></p>  
        </div>

    </div>
</body>
</html>
