$(document).on('turbolinks:load', function() {
    // taskの選択肢を表示
    $('.long-task').on('click',function(){
        $('#memo').fadeIn();
        $(".task-menu").fadeOut();
    })

    // 基礎編の問題を表示
    $('.first_question_start').on('click',function(){
        $('#memo').fadeOut(function(){
            $('#first_question').fadeIn();
    });
    })

    // 基礎編終了後問題を消す
    $('.finish-task').on('click',function(){
        $('#first_question').fadeOut();
    })

    // 中級編の問題を表示
    $('.second_question_start').on('click',function(){
        $('#memo').fadeOut(function(){
            $('#second_question').fadeIn();
    });
    })

    // 中級編終了後問題を消す
    $('.finish-task').on('click',function(){
        $('#second_question').fadeOut();
    })

});