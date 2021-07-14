$(document).ready(function() {

    var ctx = document.getElementById('experience');
    var experience = new Chart(ctx, {
        type: 'horizontalBar',
        data: {
            labels: ['経験値'],
            datasets: [{
                data: experiences,
                backgroundColor: [
                    'rgba(171,195,241)'
                ],
                borderColor: [
                    'rgba(24,90,219)'
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
                        max: 35
                    }
                }]
            },
            legend: {
                display: false
            }
        }
    });

// 問題を解くたびに経験値が反映

　　$(".btn-1, .btn-2 , .btn-3").on('click',function(){
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
    if (experience.data.datasets[0].data >= 35) {
        experience.data.datasets[0].data = 0
        $('#overlay, .modal-window').fadeIn();
    }
    experience.update();
    })

    $('.js-close').click(function () {
        $('#overlay, .modal-window').fadeOut();
        $.ajax({
            type: "get",
            url: "level_up_users",
            detaType: "json",
        })
      });
});