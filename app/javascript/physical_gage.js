$(document).on('turbolinks:load', function() {

    // 二択問題の発火
    $(".simple_task").on('click',function(){
        var target = $(this);
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/physical",
            type: "post",
            data: params,
        })
    })

    // 基礎編のスタートボタンの発火
    $(".little_difficult_question").on('click',function(){
        var result = 10
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/physical",
            type: "post",
            data: params,
        })
        window.location.href = 'firsts/new';
    })

    // 実践編のスタートボタンの発火
    $(".difficult_question").on('click',function(){
        var result = 20
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/physical",
            type: "post",
            data: params,
        })
        window.location.href = 'seconds/new';
    })
})


