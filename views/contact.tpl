<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Контакты | ООО “Пекарня у дома”</title>

    <style>
    /* Общие стили для страницы */
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        scrollbar-width: none;
    }

    /* Подложка для всей страницы */
    #contact-page {
        width: 100%;
        height: 100%;
        margin-top: 50px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    /* Стили для карты и адреса */
    #map-and-address {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        width: 80%;
        height: 100%;
    }

    /* Стили для карты */
    #map-placeholder {
        
        width: 70%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #808080;
    }

    /* Стили для адреса */
    #address-list {
        color: white;
        width: 29%;
        max-height: 540px;
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
        padding: 10px;
        overflow-y: auto;
        box-sizing: border-box;
    }

    #address-list h2 {
        font-size: 16px;
        font-weight: normal;
        width: 100%;
        text-align: left;
    }

    #address-list p {
        font-size: 12px;
        width: 100%;
        text-align: left;
    }

    .bakery-info {
        width: 100%;
        border: 2px solid orange; 
        border-radius: 10px; 
        padding: 6px; 
        margin-bottom: 8px; 
        box-sizing: border-box;
    }

    .bakery-info:hover {
        background-color: rgba(0, 0, 0, 0.1);
    }


    /* Стили для информации */
    #contact-info {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        width: 80%;
        height: 30%;
        margin: 30px auto; /* автоматическое выравнивание по центру */
        
    }

    /* Стили для контактной информации */
    #contact {
        height: 100%;
        width: 32%;
        display: flex;
        flex-wrap: wrap;
        background-color: rgba(147, 88, 13, 0.5);
        border-radius: 30px;
        padding: 5px;
        color: white;

    }

    /* Стили для заголовков и параграфов в контактной информации */
    #contact h2 {
        width: 100%;
        padding: 20px 20px 10px 20px ;
        font-size: 18px;
        font-weight: normal;
    }

    #contact p {
        width: 100%;
        padding: 0px 20px 20px 20px;
        font-size: 16px;
    }

    /* Стили для навигационных точек */
    #navigation-dots {
        width: 80%;
        height: 5%;
        margin: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 30px auto;
    }

    /* Стили для каждой навигационной точки */
    .dot {
        height: 70px;
        width: 70px;
        margin: 0px 40px 0px 0px;
        border: none;
        background-color: transparent;
    }

    .image-hover {
        transition: all 0.5s ease; /* Плавный переход */
    }

    .image-hover:hover {
        opacity: 0.5; /* Затемнение картинки при наведении */
    }

    .contact-links:hover {
        color: black; /* Затемнение картинки при наведении */
    }

    .contact-links{
        font-family: 'MenuFont';
        color: white;
        font-size: 25px;
        text-shadow: rgb(255, 89, 0) 1px 4px 5px;
        margin-right: 20px;
    }

    </style>
</head>

<body>
    % rebase('layout.tpl', title='contacts', year=year)
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
        </div>

        <!-- Контактная информация -->
        <div id="contact-info">
            <div id="contact">
                    <h2>По вопросам работы:</h2>
                    <p>Email: hr@bakerybyhome.ru<br>
                    Телефон: 8(900)200-21-92</p>
            </div>

            <div id="contact">
                    <h2>По вопросам сотрудничества:</h2>
                    <p>Email: hr@bakerybyhome.ru<br>
                    Телефон: 8(900)200-21-92</p>
            </div>

            <div id="contact">
                    <h2>Оставить обратную связь:</h2>
                    <p>Email: admin@bakerybyhome.ru<br>
                    Телефон: 8(900)200-57-38</p>
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
