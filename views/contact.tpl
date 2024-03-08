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
        background-color: #f0f0f0;
        width: 100%;
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
      }

      /* Стили для карты или ее заглушки */
      #map-placeholder {
        background-color: #d0d0d0;
        width: 80%;
        height: 40%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        font-weight: bold;
        color: #808080;
      }

      /* Стили для контактной информации */
      #contact-info {
        background-color: #ffffff;
        width: 80%;
        height: 40%;
        display: flex;
        flex-wrap: wrap;
        overflow-y: scroll;
      }

      /* Стили для скроллбара */
      #contact-info::-webkit-scrollbar {
        width: 10px;
      }

      #contact-info::-webkit-scrollbar-track {
        background: #f0f0f0;
      }

      #contact-info::-webkit-scrollbar-thumb {
        background: #808080;
      }

      #contact-info::-webkit-scrollbar-thumb:hover {
        background: #606060;
      }

      /* Стили для заголовков и параграфов в контактной информации */
      #contact-info h2 {
        width: 50%;
        padding: 10px;
        font-size: 18px;
        font-weight: normal;
        border-bottom: 1px solid #d0d0d0;
      }

      #contact-info p {
        width: 50%;
        padding: 10px;
        font-size: 16px;
        border-bottom: 1px solid #d0d0d0;
      }

      /* Стили для навигационных точек */
      #navigation-dots {
        width: 80%;
        height: 5%;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      /* Стили для каждой навигационной точки */
      .dot {
        height: 10px;
        width: 10px;
        margin: 0 5px;
        background-color: #808080;
        border-radius: 50%;
        display: inline-block;
      }

      /* Стили для активной навигационной точки */
      .active {
        background-color: #606060;
      }

      /* Стили для подвала с названием компании */
      footer {
        width: 80%;
        height: 5%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 16px;
        color: #808080;
      }
    </style>
</head>

<body>
    % rebase('layout.tpl', title='contacts', year=year)
    
    <div id="contact-page">
        <!-- Возможное место для карты -->
        <div id="map-placeholder">
            <p>ВОЗМОЖНО КАРТА</p>
        </div>


        <!-- Контактная информация -->
        <div id="contact-info">
            <h2>Адреса:</h2>
            <p>Санкт-Петербург,<br>
            наб. Обводного канала 199-201н,<br>
            офис 6</p>

            <h2>По вопросам работы:</h2>
            <p>Email: hr@bakerybyhome.ru<br>
            Телефон: 8 (800) 100-20-30</p>

            <h2>Оставить обратную связь:</h2>
            <p>Email: admin@bakerybyhome.ru<br>
            Телефон: 8 (800) 100-20-30</p>

            <h2>По вопросам сотрудничества:</h2>
            <p>Email: hr@bakerybyhome.ru<br>
            Телефон: 8 (800) 100–20–30</p>
        </div>


        <!-- Навигационные точки -->
        <div id="navigation-dots">
            <span class="dot active"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>

        <!-- Название компании -->
        <footer>
            <p>ООО “Пекарня у дома”</p>
        </footer>
    </div>
</body>
</html>
