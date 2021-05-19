$(document).on('turbolinks:load', function() {

    $(".recovery_charge").on('click',function(){
        var randum = Math.floor( Math.random() * 5 );
        $('.recovery_icon:eq('+randum+')').fadeIn();
        $('.recovery_icon:eq('+randum+')').on('click',function(){
        var target = $(this);
        // // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/recovery",
            type: "post",
            data: params
        })
        $('.recovery_icon:eq('+randum+')').fadeOut(function(){
            $('.recovery_comentary:eq('+randum+')').fadeIn();
        })
        $('.recovery_comentary:eq('+randum+')').on('click',function(){
        $('.recovery_comentary:eq('+randum+')').fadeOut();
        })
    })
})
})