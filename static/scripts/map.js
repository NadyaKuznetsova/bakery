// Код для загрузки карты с API
var script = document.createElement("script");
script.type = "text/javascript";
script.charset = "utf-8";
script.async = true;
script.src = "https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A92cb832e3e0535bf620b3a5c673a298844518a245ffc52a07bb1ee6c8d210c8d&amp;width=700&amp;height=700&amp;lang=ru_RU&amp;scroll=true";
document.querySelector(".map-placeholder").appendChild(script);