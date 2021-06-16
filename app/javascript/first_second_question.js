
$(document).on('turbolinks:load', function() {

    //　質問に対して次の値を表示

    $(".send_data_selection").on('click',function(){
        var target = $(this);
        var result = target.data("send-id");   // クリックされた要素の指定するIDを取得


        if (result == 0){   // 吹き出しの表示
            $(".boy-position1, .boy-position2, .boy-position3, .hukidasi1, .hukidasi2, .hukidasi3").fadeOut();
                $(".boy-position1").fadeIn();
                $(".hukidasi1").fadeIn();
                $(".experience-hukidasi-0").fadeIn(function(){
                    $(this).delay(1250).fadeOut();
                })
        } else if (result == 5){
            $(".boy-position1, .boy-position2, .boy-position3, .hukidasi1, .hukidasi2, .hukidasi3").fadeOut();
                $(".boy-position2").fadeIn();
                $(".hukidasi2").fadeIn();
                $(".experience-hukidasi-5").fadeIn(function(){
                    $(this).delay(1250).fadeOut();
                })
        } else if (result == 10){
            $(".boy-position1, .boy-position2, .boy-position3, .hukidasi1, .hukidasi2, .hukidasi3").fadeOut();
                $(".boy-position3").fadeIn();
                $(".hukidasi3").fadeIn();
                $(".experience-hukidasi-10").fadeIn(function(){
                    $(this).delay(1250).fadeOut();
                })
        }
        var params = {   // paramsに値を代入
            id: result
        }
        $.ajax({    // ajaxで送信処理
            url: "/firsts",
            type: "post",
            data: params,
            dataType: "json"
        })
        .done(function(data) {
            console.log(data + "success");
        })
        .fail(function() {
            alert("error!");  // 通信に失敗した場合はアラートを表示
        })
        var select_life = result*2;    // フロントから送られてきた選択された数値
        var progressbar_width_now = $('.progress-bar').width()
        var life = progressbar_width_now - select_life
        $({count: progressbar_width_now}).animate({count: life}, {    // countdown
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        $('.progress-bar').css('width', life);    //プログレスバーの値変化

        var number = 1    // HREFのから取ってきた数字で現質問と次の質問の内容を取得
        var clickButtonHref = $(this).attr('href');
        var clickButtonNextHref = parseInt(clickButtonHref) + parseInt(number);

        var question_class = '.' + clickButtonHref
        var next_question_href = '.' + clickButtonNextHref

        if (clickButtonHref == 10){    // もし最後まで問題を解いたら結果画面に遷移
            $(question_class).fadeOut(function(){
                $(next_question_href).fadeIn();
            });

        var last_life = $(".progress-bar").width(); // countup
        var life_score = 100-(200-last_life)/2;
        $({count: 0}).animate({count: life_score}, {
	duration: 2500,
	easing: 'linear',
	progress: function() {
    $('#result_score span').text(Math.ceil(this.count));
	}
        });
        if (life_score == 100){    //点数別コメントの表示
            $(".comment1").fadeIn();
            $(".boy-position1, .boy-position2, .boy-position3").fadeOut();
            $(".boy-position1").fadeIn();
        } else if (life_score >= 80 && life_score < 100){
            $(".comment2").fadeIn();
            $(".boy-position1, .boy-position2, .boy-position3").fadeOut();
            $(".boy-position1").fadeIn();
        } else if (life_score >= 60 && life_score < 80){
            $(".comment3").fadeIn();
            $(".boy-position1, .boy-position2, .boy-position3").fadeOut();
            $(".boy-position2").fadeIn();
        } else if (life_score >= 40 && life_score < 60){
            $(".comment4").fadeIn();
            $(".boy-position1, .boy-position2, .boy-position3").fadeOut();
            $(".boy-position2").fadeIn();
        } else if (life_score >= 20 && life_score < 40){
            $(".comment5").fadeIn();
            $(".boy-position1, .boy-position2, .boy-position3").fadeOut();
            $(".boy-position3").fadeIn();
        } else if (life_score >= 0 && life_score < 20){
            $(".comment6").fadeIn();
            $(".boy-position1, .boy-position2, .boy-position3").fadeOut();
            $(".boy-position3").fadeIn();
        }
        // 
        $(".hukidasi4").fadeIn();
        }else{

        $(question_class).fadeOut(function(){    // 1~10までの値であれば次の質問に遷移
            $(next_question_href).fadeIn();
        });
        }
    });
});
