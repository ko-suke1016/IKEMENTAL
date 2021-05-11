$(document).on('turbolinks:load', function() {

var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: ['mental'],
        datasets: [{
            data: physicals,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)'
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
                    max: 100
                }
            }]
        }
    }
});

// third_question(簡単タスク)実行後メンタル値の減少
$(".simple_task").on('click',function(){
    var target = $(this);
    var result = target.data("send-id");
    console.log(result);
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});

// first_question(基礎編)実行後メンタル値の減少
$(".little_difficult_question").on('click',function(){
    var result = 10;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});


// second_question(実践編)実行後メンタル値減少
$(".difficult_question").on('click',function(){
    var result = 20;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});

});