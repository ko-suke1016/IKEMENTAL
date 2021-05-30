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
            url: "/thirds",
            type: "post",
            data: params,
        })
    })


    // 基礎編のスタートボタンの発火
    $(".first_question_start").on('click',function(){
        //mental_gageが10以下の場合遷移できないようにする
        // if (mental_gage < 10){
        //     $(".loss_mental").fadeIn();
        // }else if (mental_gage > 10){
        //mental_gageが10以上の場合遷移できる
        var result = 10
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/thirds",
            type: "post",
            data: params,
        })
        // window.location.href = 'firsts/new';
    // }
    })


    // 実践編のスタートボタンの発火
    $(".second_question_start").on('click',function(){
        //mental_gageが20以下の場合遷移できないようにする
        // if (mental_gage < 20){
        //     $(".loss_mental").fadeIn();
        // }else if (mental_gage > 20){
        //mental_gageが20以上の場合遷移できる
        var result = 20
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/thirds",
            type: "post",
            data: params,
        })
    //     window.location.href = 'seconds/new';
    // }
    })


    // mentalがたりません警告画面を閉じる
    $(".loss_mental").on('click',function(){
        $(".loss_mental").fadeOut();
    })
})


