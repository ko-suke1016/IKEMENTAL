$(document).on('turbolinks:load', function() {

var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: ['メンタル'],
        datasets: [{
            data: physicals,
            backgroundColor: [
                'rgba(251,194,131)'
            ],
            borderColor: [
                'rgba(249,132,4)'
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


// first_question(基礎編)実行後メンタル値減少
$(".first_question_start").on('click',function(){
    console.log("1");
    var result = 10;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});

// second_question(実践編)実行後メンタル値減少
$(".second_question_start").on('click',function(){
    console.log("2");
    var result = 15;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});

// third_question(実践編)実行後メンタル値減少
$(".third_question_start").on('click',function(){
    console.log("3");
    var result = 20;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X - result})
    myChart.update();
});

// recovery_questionで回復
$(".send_selection").on('click',function(){
    console.log("4");
    var target = $(this);
    var result = target.data("send-id");
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X + result})
    myChart.update();
});


//30分おきに実行
setInterval(tree_minutes_plus_two, 1800000);

// dbの値を監視しにいき差分をchart.jsに反映させていく
function tree_minutes_plus_two(){
    console.log("5");
$.ajax({
    type: "get",
    url: "execution",
    detaType: "json",
})
.done(function(deta){
    var result = deta;
    myChart.data.datasets[0].data = myChart.data.datasets[0].data.map(function(X){return X + (result - X)})
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
    if (myChart.data.datasets[0].data>=10) {
        // ajaxで送信処理
        $.ajax({
            type: "get",
            url: "less_mental",
            detaType: "json"
        });
    }
});
});

