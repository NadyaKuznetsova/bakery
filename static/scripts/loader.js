document.addEventListener("DOMContentLoaded", function () {
    var loader = document.querySelector(".loader");
    // �������� �������� ��������
    loader.style.display = "block";

    function hideLoader() {
        // ������ �������� ��������
        loader.style.display = "none";
    }

    if (document.readyState === "complete") {
        // ���� �������� ��� ��������, ������ ��������� ����������
        hideLoader();
    } else {
        // �����, ���������� ���������� ������� 'load', ����� ������ ���������
        window.addEventListener("load", hideLoader);
    }
});