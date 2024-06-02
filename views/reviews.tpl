
<!DOCTYPE html>
<htm lang="ru"l>
<body>
    % rebase('layout.tpl', title='reviews', year=year)
    <div class="row">
        <h3> Оставить отзыв </h3>
            <p><input type="text" size="50" id="inputName" name="USERNAME" placeholder="Имя"></p>
            <p><textarea style="resize: none;" id="inputComment" rows="2" cols="50" name="COMMENT" placeholder="Комментарий"></textarea></p> 
            <p><input type="text" size="50" id="inputDate" name="DATE" placeholder="Дата"></p>
            <p><input onclick="process_review_form" class="btn" type="submit" value="Оставить отзыв"></p>
    </div>
    <div class="scroll">
        <div id="reviewOutput"></div>
        
    </div>
</body>

</html>

<script>
    function showReview() {
        event.preventDefault(); // Предотвращаем отправку формы
        const name = document.getElementById('inputName').value;
        const comment = document.getElementById('inputComment').value;
        const date = document.getElementById('inputDate').value;

        if (name && comment && date) {
            const reviewOutput = document.getElementById('reviewOutput');
            reviewOutput.innerHTML = `<p>Имя: ${name}</p><p>Комментарий: ${comment}</p><p>Дата: ${date}</p>`;
        } else {
            alert('Пожалуйста, заполните все поля формы!');
        }
    }
</script>