$(document).on('turbolinks:load', function() {
    // // taskの選択肢を表示
    // $('.long-task').on('click',function(){
    //     $(".light_page_top").fadeOut(function(){
    //         $('#first_question').fadeIn();
    //     });
    // })

    // 基礎編の問題を表示
    $('.first_question_start').on('click',function(){
        $('#memo').fadeOut(function(){
            $('.memory').fadeIn();
            $('#first_question').fadeIn();
            $(".mental-hukidasi-10").fadeIn(function(){
                $(this).delay(1250).fadeOut();
            });
    });
    })

    // 基礎編終了後問題を消す
    $('.finish-task').on('click',function(){
        $('#first_question').fadeOut();
        $('.memory').fadeOut();
    })

    // 中級編の問題を表示
    $('.second_question_start').on('click',function(){
        $('#memo').fadeOut(function(){
            $('.memory').fadeIn();
            $('#second_question').fadeIn();
            $(".mental-hukidasi-15").show(function(){
                $(this).delay(1250).fadeOut();
            });
    });
    })

    // 中級編終了後問題を消す
    $('.finish-task').on('click',function(){
        $('#second_question').fadeOut();
        $('.memory').fadeOut();
    })

    // 実践編の問題を表示
    $('.third_question_start').on('click',function(){
        $('#memo').fadeOut(function(){
            $('.memory').fadeIn();
            $('#third_question').fadeIn();
            $(".mental-hukidasi-20").fadeIn(function(){
                $(this).delay(1250).fadeOut();
            });
    });
    })

    // 実践編終了後問題を消す
    $('.finish-task').on('click',function(){
        $('#third_question').fadeOut();
        $('.memory').fadeOut();
    })


    $(function(){
        //フッターを最下部に固定
            var $footer = $('#footer');
            if(window.innerHeight > $footer.offset().top + $footer.outerHeight() ) {
                $footer.attr({'style': 'position:fixed; top:' + (window.innerHeight - $footer.outerHeight()) + 'px;' });
            }
        })

});