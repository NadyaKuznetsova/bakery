<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Контакты | ООО “Пекарня у дома”</title>
</head>

<body>
    % rebase('layout.tpl', title='contacts', year=year)
    <script>
    document.addEventListener("DOMContentLoaded", function() {
    var loader = document.querySelector(".loader");
    // Показать анимацию загрузки
    loader.style.display = "block";

    // Скрыть анимацию загрузки, когда элемент загружен
    window.addEventListener("load", function() {
        loader.style.display = "none";
    });
});

    </script>

    
    <div id="contact-page">

    
    <!-- Возможное место для карты и адреса -->
        <div id="map-and-address">
            <div id="map-placeholder">
            <div class="loader"></div>
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A92cb832e3e0535bf620b3a5c673a298844518a245ffc52a07bb1ee6c8d210c8d&amp;width=700&amp;height=540&amp;lang=ru_RU&amp;scroll=true"></script>
                </div>

            <div id="address-list">
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
      
        <div id="navigation-dots">
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
