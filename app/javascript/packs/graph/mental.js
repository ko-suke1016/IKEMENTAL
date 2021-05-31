$(document).on('turbolinks:load', function() {

var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: ['メンタル'],
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
        },
        legend: {
            display: false
        }
    }
});

// userのphisical_gageカラムの値によって処理が実行されないようにする
// var mental_gage_score = physicals.join(',');
// console.log(mental_gage_score);

// third_question(簡単タスク)実行後メンタル値の減少
// if (mental_gage_score>5){
// $(".simple_task").on('click',function(){
//     console.log('neko');
//     var target = $(this);
//     var result = target.data("send-id");
//     myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
//     myChart.update();
// });
// }

// メンタルゲージの残りに応じて質問に答えられなくなる

// $('.long-task').on('click',function(){
//     if (myChart.data.datasets[0].data<20) {
//         // ajaxで送信処理
//         $.ajax({
//             type: "get",
//             url: "less_mental",
//             detaType: "json"
//         })
//         .done(function(){
//             console.log("tako");
//         })
//     }
// })
// // first_question(基礎編)実行後メンタル値の減少
// if (mental_gage_score>10){
$(".first_question_start").on('click',function(){
    var result = 10;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});



// second_question(実践編)実行後メンタル値減少
$(".second_question_start").on('click',function(){
    var result = 20;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});

// recovery_questionで回復
$(".send_selection").on('click',function(){
    var target = $(this);
    var result = target.data("send-id");
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X + result})
    myChart.update();
});


// 30分おきに実行
setInterval(tree_minutes_plus_two, 18000);

// dbの値を監視しにいき差分をchart.jsに反映させていく
function tree_minutes_plus_two(){
$.ajax({
    type: "get",
    url: "execution",
    detaType: "json",
})
.done(function(deta){
    var result = deta;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X + (result - X)})
    console.log(myChart.data.datasets[0].data);
    myChart.update();
    // メンタルが10を超えた時ボタンを作動させにいく
    if (myChart.data.datasets[0].data>=10) {
        // ajaxで送信処理
        $.ajax({
            type: "get",
            url: "less_mental",
            detaType: "json"
        });
    }
 })
}

// 回復アイテムを使用した場合、メンタルゲージに該当scoreが非同期で反映
$(document).on('click','.recovery_up',function(){
    var target = $(this);
    var result = target.data("send-id");
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X + result})
    myChart.update();
    // メンタルが10を超えた時ボタンを作動させにいく
    if (myChart.data.datasets[0].data>10) {
        // ajaxで送信処理
        $.ajax({
            type: "get",
            url: "less_mental",
            detaType: "json"
        });
    }
});
});

