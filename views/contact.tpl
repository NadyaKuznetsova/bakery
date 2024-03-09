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
    }

    /* Подложка для всей страницы */
    #contact-page {
        width: 100%;
        height: 120vh;
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
        align-items: center;
        width: 80%;
        height: 100%;
    }

    /* Стили для карты */
    #map-placeholder {
        background-color: #d0d0d0;
        width: 70%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        font-weight: bold;
        color: #808080;
    }

    /* Стили для адреса */
    #address {
        background-color: #ffffff;
        width: 50%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 10px;
        box-sizing: border-box;
    }

    #address h2 {
        font-size: 18px;
        font-weight: normal;
        width: 100%;
        text-align: left;
    }

    #address p {
        font-size: 16px;
        width: 100%;
        text-align: left;
        border-bottom: 1px solid #d0d0d0;
    }


    /* Стили для информации */
    #contact-info {
        width: 80%;
        height: 30%;
        margin: 20px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    /* Стили для контактной информации */
    #contact {
        background-color: #ffffff;
        height: 100%;
        width: 35vh;
        margin: 0px 0px 20px 0px;
        display: flex;
        flex-wrap: wrap;
    }


    /* Стили для заголовков и параграфов в контактной информации */
    #contact-info h2 {
        width: 100%;
        padding: 20px;
        font-size: 18px;
        font-weight: normal;
    }

    #contact-info p {
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
    }

    /* Стили для каждой навигационной точки */
    .dot {
        height: 70px;
        width: 80px;
        margin: 0px 40px 0px 0px;
        background-color: #ffffff;
        border-radius: 50%;
    }

      /* Стили для подвала с названием компании */
    footer {
        width: 80%;
        height: 5%;
        display: flex;
        align-items: center;
        justify-content: right;
        font-size: 16px;
        color: #ffffff;
    }
    </style>
</head>

<body>
    % rebase('layout.tpl', title='contacts', year=year)
    <div id="contact-page">
    <!-- Возможное место для карты и адреса -->
        <div id="map-and-address">
            <div id="map-placeholder">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A92cb832e3e0535bf620b3a5c673a298844518a245ffc52a07bb1ee6c8d210c8d&amp;width=540&amp;height=540&amp;lang=ru_RU&amp;scroll=true"></script>
            </div>
            <div id="address">
                <h2>Адреса:</h2>
                <p>Санкт-Петербург,<br>
                наб. Обводного канала 199-201н,<br>
                офис 6</p>
                <p>Санкт-Петербург,<br>
                наб. Обводного канала 199-201н,<br>
                офис 6</p>
                <p>Санкт-Петербург,<br>
                наб. Обводного канала 199-201н,<br>
                офис 6</p>
            </div>
        </div>

        <!-- Контактная информация -->
        <div id="contact-info">
            <div id="contact">
                <div id="work-questions">
                    <h2>По вопросам работы:</h2>
                    <p>Email: hr@bakerybyhome.ru<br>
                    Телефон: 8 (800) 100-20-30</p>
                </div>
            </div>
        
            <div id="contact">
                <div id="feedback">
                    <h2>Оставить обратную связь:</h2>
                    <p>Email: admin@bakerybyhome.ru<br>
                    Телефон: 8 (800) 100-20-30</p>
                </div>
            </div>

            <div id="contact">
                <div id="partnership-questions">
                    <h2>По вопросам сотрудничества:</h2>
                    <p>Email: hr@bakerybyhome.ru<br>
                    Телефон: 8 (800) 100–20–30</p>
                </div>
            </div>
        </div>

        <!-- Навигационные точки -->
        <div id="navigation-dots">
            <button class="dot"></button>
            <button class="dot"></button>
            <button class="dot"></button>

                <!-- Название компании -->
            <footer>
                <p>ООО “Пекарня у дома”</p>
            </footer>
        </div>

        
    </div>
</body>
</html>
