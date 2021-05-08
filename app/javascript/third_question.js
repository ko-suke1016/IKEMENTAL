$(document).on('turbolinks:load', function() {

    // 二択問題の表示
    $(".simple_task").on('click',function(){
        $(".third_question").fadeIn()
    });


    // 二択問題の発火
    $(".send_data_third_question").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#FF0000");
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
            data: params
        });
        if (result == 0) {
            $('.third_question').fadeOut(function(){
                $(".third_answer_success").fadeIn();
        });
        } else if (result == 5) {
            $('.third_question').fadeOut(function(){
                $(".third_answer_failure").fadeIn();
            });
        }
    });
})