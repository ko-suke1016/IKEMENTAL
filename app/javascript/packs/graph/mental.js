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
                'rgba(255, 159, 64, 1)'
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

// userのphisical_gageカラムの値によって処理が実行されないようにする
var mental_gage_score = physicals.join(',');

// third_question(簡単タスク)実行後メンタル値の減少
if (mental_gage_score>5){
$(".simple_task").on('click',function(){
    console.log('neko');
    var target = $(this);
    var result = target.data("send-id");
    console.log(result);
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});
}


// first_question(基礎編)実行後メンタル値の減少
if (mental_gage_score>10){
$(".little_difficult_question").on('click',function(){
    var result = 10;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});
}


// second_question(実践編)実行後メンタル値減少
if (mental_gage_score>20){
$(".difficult_question").on('click',function(){
    var result = 20;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});
}

});