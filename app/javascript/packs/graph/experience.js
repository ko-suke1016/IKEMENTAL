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

// 問題を解くたびに経験値が反映

　　$(".experience").on('click',function(){
    var target = $(this);
    var score = target.data("send-id");
    if (score == 0) {
        var result = 2
    }else if (score == 5){
        var result = 1
    }else if (score == 10){
        var result = 0
    }
    experience.data.datasets[0].data = experience.data.datasets[0].data.map(function(X){return X + result})
    if (experience.data.datasets[0].data >= 50) {
        experience.data.datasets[0].data = 0
        $('#overlay, .modal-window').fadeIn();
    }
    experience.update();
    })

    $('.js-close').click(function () {
        $('#overlay, .modal-window').fadeOut();
        $.ajax({
            type: "get",
            url: "level_up",
            detaType: "json",
        })
      });

// third_question(簡単タスク)実行後経験値の増加
// $(".send_data_third_question").on('click',function(){
//     var target = $(this);
//     var result = target.data("send-id");
//     experience.data.datasets[0].data = experience.data.datasets[0].data.map(function(X){return X + result})
//         if (experience.data.datasets[0].data >= 50) {
//             experience.data.datasets[0].data = 0
//             $(".status_up").fadeIn();
//         }
//     experience.update();
// })
});
