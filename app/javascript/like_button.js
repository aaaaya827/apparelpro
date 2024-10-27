document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.like-button').forEach(button => {
      button.addEventListener('click', (event) => {
        event.preventDefault(); // デフォルトの挙動をキャンセル
        button.classList.toggle('like-button-click'); // クラスの追加・削除を切り替え
  
        // 非同期でフォームを送信
        fetch(button.closest('form').action, {
          method: button.closest('form').method,
          headers: {
            'X-CSRF-Token': document.querySelector("meta[name='csrf-token']").content
          }
        });
      });
    });
  });