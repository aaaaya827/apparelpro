document.addEventListener('turbo:load', () => {
    const canvas = document.getElementById('myChart-beginner');
    if (!canvas) return;

    const ctx = canvas.getContext('2d');
    const initialProgress = parseInt(canvas.dataset.progress, 10) || 0;

    new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: ['進捗完了', '未完了'],
            datasets: [{
                data: [initialProgress, 100 - initialProgress],
                backgroundColor: ['#36A2EB', '#FF6384'],
                borderWidth: 0,
            }],
        },
        options: {
            responsive: true,
            plugins: {
                legend: { display: false },
                tooltip: { enabled: false },
            },
            cutout: '80%',
        },
    });
});