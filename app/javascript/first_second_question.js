
$(document).on('turbolinks:load', function() {

    // 問題１

    $(".send_data_selection1").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, ..experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
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
        // フロントから送られてきた選択された数値
        var select_life = result*2;
        // 選択された数値から200を引いた値
        var life = 200 - select_life
        // countdown
        $({count: 200}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        //プログレスバーの値変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $('.q_1').fadeOut(function(){
            $(clickButtonHref).fadeIn();
        });
    });

    // 問題２

    $(".send_data_selection2").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_2').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題３

    $(".send_data_selection3").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_3').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題4

    $(".send_data_selection4").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_4').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題5

    $(".send_data_selection5").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_5').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題６

    $(".send_data_selection6").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_6').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題7

    $(".send_data_selection7").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_7').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題8

    $(".send_data_selection8").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        var clickButtonHref = $(this).attr('href');
            $('.q_8').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題9

    $(".send_data_selection9").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params
        });
        // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // countdown
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
            $('.q_9').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });
    });

    // 問題10

    $(".send_data_selection10").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // 吹き出しの表示
        if (result == 0){
            $(".hukidasi1, .experience-hukidasi-10").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 5){
            $(".hukidasi2, .experience-hukidasi-5").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        } else if (result == 10){
            $(".hukidasi3, .experience-hukidasi-0").fadeIn(function(){
                $(this).delay(1500).fadeOut();
            });
        }
        // paramsに値を代入
        var params = {
            id: result
        }
         // フロントから送られてきた値
        var rial_life = $(".progress-bar").width();
        var life = rial_life - result*2;
        // メンタル値の残りをカウントダウン
        $({count: rial_life}).animate({count: life}, {
            duration: 1000,
            easing: 'linear',
            progress: function() {
        $('#life span').text(Math.ceil(this.count));
        }
        });
        // プログレスバーの変化
        $('.progress-bar').css('width', life);
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            data: params,
        });
        // 質問を非表示にして結果画面を表示
        var clickButtonHref = $(this).attr('href');
            $('.q_10').fadeOut(function(){
                $(clickButtonHref).fadeIn();
        });

        var last_life = $(".progress-bar").width();
        // countup
        var life_score = 100-(200-last_life)/2;
        $({count: 0}).animate({count: life_score}, {
	            duration: 2500,
	            easing: 'linear',
	            progress: function() {
	            $('#result_score span').text(Math.ceil(this.count));
	            }
        });
        //点数別コメントの表示
        if (life_score == 100){
            $(".comment1").fadeIn();
        } else if (result <= 80 && result < 100){
            $(".comment2").fadeIn();
        } else if (result <= 60 && result < 80){
            $(".comment3").fadeIn();
        } else if (result <= 40 && result < 60){
            $(".comment4").fadeIn();
        } else if (result <= 20 && result < 40){
            $(".comment5").fadeIn();
        } else if (result <= 0 && result < 20){
            $(".comment6").fadeIn();
        }
        // 
        $(".hukidasi4").fadeIn();
        // $("#life").fadeOut();
    });
});
