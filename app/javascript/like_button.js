document.addEventListener('turbo:load', () => {
    document.querySelectorAll('.like-button').forEach(button => {
        button.addEventListener('click', (event) => {
        event.preventDefault(); // デフォルトの挙動をキャンセル
        button.classList.toggle('like-button-click'); // クラスの追加・削除を切り替え
    });
    });
});