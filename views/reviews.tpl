% rebase('layout.tpl', title=title, year=year, datausers=datausers)

<!DOCTYPE html>
<html lang="en">
<h1></h1>
<body>
        <div class="review">
            <form id="contact-form" action="/reviews" method="post">
            
            <div  style="text-align: center;">
                <h2>Leave a review</h2>
                <!-- Поле для ввода имени -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" type="text" name="NAME" placeholder="Your name..." />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода почты -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" type="text" name="EMAIL" placeholder="Your email address..." />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода рейтинга -->
                <div class="validate-input-at w-50" data-validate="Please enter a number from 1 to 5">
                    <input class="input-at" type="number" name="RATING" min="1" max="5" placeholder="rating (1-5)" />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода отзывы -->
                <div class="validate-input-at" data-validate="Required field">
                    <textarea class="input-at" name="COMMENT" placeholder="Enter a review..."></textarea>
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода телефона -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" name="DATE" placeholder="Input date..." />
                    <span class="focus-input-at"></span>
                </div>
                <div id="error-popup" class="error-popup" style="display: none;">
                    <span id="error-message"></span>
                </div>
                <!-- Кнопка Отправить -->
                <button id="submit-at" class="btn">Submit</button>
            </div>
            </form>
            <div class="result-at"></div>

            <!--Считывание данных из файла в заголовок -->
            
            <div class = "rectanglefinal">
            <h2>Review</h2>
            %for i in datausers:
                <h4 class ="fonts"> {{i}} </h4>
            %end

        </div>
    
</body>
</html>
