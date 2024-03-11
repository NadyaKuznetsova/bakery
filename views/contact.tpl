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
        background-color: #ffffff;
        width: 29%;
        height: 540px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 10px;
        box-sizing: border-box;
        overflow-y: scroll;
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
        background-color: #ffffff;
        height: 100%;
        width: 32%;
        display: flex;
        flex-wrap: wrap;
        border-radius: 10%;

    }

    /* Стили для заголовков и параграфов в контактной информации */
    #contact h2 {
        width: 100%;
        padding: 20px;
        font-size: 18px;
        font-weight: normal;
    }

    #contact p {
        width: 100%;
        padding: 10px;
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
        border-radius: 50%;
        border: none;
        background-color: transparent;
    }

    </style>
</head>

<body>
    % rebase('layout.tpl', title='contacts', year=year)
    <div id="contact-page">
    <!-- Возможное место для карты и адреса -->
        <div id="map-and-address">
            <div id="map-placeholder">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A92cb832e3e0535bf620b3a5c673a298844518a245ffc52a07bb1ee6c8d210c8d&amp;width=700&amp;height=540&amp;lang=ru_RU&amp;scroll=true"></script>
            </div>

            <div id="address-list">
                % for bakery in bakeries:
                <h2>{{ bakery['address'] }}</h2>
                <p>{{ bakery['working_hours'] }}</p>
                <p>{{ bakery['nearest_metro'] }}</p>
                % end
                </div>
            </div>
        </div>

        <!-- Контактная информация -->
        <div id="contact-info">
            <div id="contact">
                    <h2>По вопросам работы:</h2>
                    <p>Email: hr@bakerybyhome.ru<br>
                    Телефон: 8 (800) 100-20-30</p>
            </div>

            <div id="contact">
                    <h2>По вопросам сотрудничества:</h2>
                    <p>Email: hr@bakerybyhome.ru<br>
                    Телефон: 8 (800) 100–20–30</p>
            </div>

            <div id="contact">
                    <h2>Оставить обратную связь:</h2>
                    <p>Email: admin@bakerybyhome.ru<br>
                    Телефон: 8 (800) 100-20-30</p>
            </div>
        </div>

        <!-- Навигационные точки -->

        
        <div id="navigation-dots">
            <p><a class="dot" href="https://vk.com/guap_ru">
                <img src="\static\images\icons\vk_white.png"></a></p>
            <p><a class="dot" href="https://t.me/s/new_guap">
                <img src="\static\images\icons\telegram2.png"></a></p>             
        </div>

        
    </div>
</body>
</html>
