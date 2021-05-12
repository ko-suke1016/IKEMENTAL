$(document).on('turbolinks:load', function() {

    // 二択問題の表示
        $(".simple_task").on('click',function(){
        if (mental_gage < 5){
            $(".loss_mental").fadeIn();
        }else if(mental_gage > 5){
            $(".third_question").fadeIn();
        }
    })


    // 二択問題の発火
    $(".send_data_third_question").on('click',function(){
        var target = $(this);
        // // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/experience",
            type: "post",
            data: params
        });
        // 正解か不正解かで呼び出す結果を変える
        if (result == 5) {
            $('.third_question').fadeOut(function(){
                $(".third_answer_success").fadeIn();
        });
        } else if (result == 0) {
            $('.third_question').fadeOut(function(){
                $(".third_answer_failure").fadeIn();
            });
        }
        // 最後に解答結果を押すと閉じる
        $(".third_answer_success , .third_answer_failure").on('click',function(){
            $(".third_answer_success , .third_answer_failure").fadeOut();
        })
    });
})