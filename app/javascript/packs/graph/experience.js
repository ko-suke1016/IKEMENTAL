$(document).on('turbolinks:load', function() {

    var ctx = document.getElementById('experience');
    var experience = new Chart(ctx, {
        type: 'horizontalBar',
        data: {
            labels: ['経験値'],
            datasets: [{
                data: experiences,
                backgroundColor: [
                    'rgba(54, 162, 235, 0.2)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                },
                xAxes: [{
                    ticks: {
                        min: 0,
                        max: 50
                    }
                }]
            },
            legend: {
                display: false
            }
        }
    });


// third_question(簡単タスク)実行後経験値の増加
$(".send_data_third_question").on('click',function(){
    var target = $(this);
    var result = target.data("send-id");
    experience.data.datasets[0].data = experience.data.datasets[0].data.map(function(X){return X + result})
        if (experience.data.datasets[0].data >= 50) {
            experience.data.datasets[0].data = 0
            $(".status_up").fadeIn();
        }
    experience.update();
})
});
