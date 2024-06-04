const showFormBtn = document.getElementById('showFormBtn');
const positionForm = document.getElementById('positionForm');
const hideFormBtn = document.getElementById('hideFormBtn');

showFormBtn.addEventListener('click', function () {
    positionForm.style.display = 'block';
    hideFormBtn.style.display = 'block';
    showFormBtn.style.display = 'none';
});

hideFormBtn.addEventListener('click', function () {
    positionForm.style.display = 'none';
    hideFormBtn.style.display = 'none';
    showFormBtn.style.display = 'block';
});