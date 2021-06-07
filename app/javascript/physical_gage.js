$(document).on('turbolinks:load', function() {

    // 基礎編のスタートボタンの発火
    $(".first_question_start").on('click',function(){
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
    })


    // 実践編のスタートボタンの発火
    $(".second_question_start").on('click',function(){
        var result = 15
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

    $(".third_question_start").on('click',function(){
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
    })

})


