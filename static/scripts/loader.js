document.addEventListener("DOMContentLoaded", function () {
    var loader = document.querySelector(".loader");
    // Показать анимацию загрузки
    loader.style.display = "block";

    function hideLoader() {
        // Скрыть анимацию загрузки
        loader.style.display = "none";
    }

    if (document.readyState === "complete") {
        // Если документ уже загружен, скрыть загрузчик немедленно
        hideLoader();
    } else {
        // Иначе, установить обработчик события 'load', чтобы скрыть загрузчик
        window.addEventListener("load", hideLoader);
    }
});