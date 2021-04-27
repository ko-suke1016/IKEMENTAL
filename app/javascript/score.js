
$(document).on('turbolinks:load', function() {
    $(".send_data_selection1").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            dataType: 'json',
            data: params
        })
        // プログレスバーの値変化
        var life1 = 200 - result*2;
        $('.progress-bar').css('width', life1);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('#q_01').fadeOut()
        ).done(function(){
            $(clickButtonHref).fadeIn()
        });
    });

    $(".send_data_selection2").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            dataType: 'json',
            data: params
        })
        // プログレスバーの値変化
        var rial_life = $(".progress-bar").width();
        var life2 = rial_life - result*2;
        $('.progress-bar').css('width', life2);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('#q_02').fadeOut()
        ).done(function(){
            $(clickButtonHref).fadeIn()
        });
    });

    $(".send_data_selection3").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            dataType: 'json',
            data: params
        })
        // プログレスバーの値変化
        var rial_life = $(".progress-bar").width();
        var life3 = rial_life - result*2;
        $('.progress-bar').css('width', life3);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('#q_03').fadeOut()
        ).done(function(){
            $(clickButtonHref).fadeIn()
        });
    });

    $(".send_data_selection4").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            dataType: 'json',
            data: params
        })
        // // プログレスバーの値変化
        var rial_life = $(".progress-bar").width();
        var life4 = rial_life - result*2;
        $('.progress-bar').css('width', life4);
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('#q_04').fadeOut()
        ).done(function(){
            $(clickButtonHref).fadeIn()
        });
    });

    $(".send_data_selection5").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // paramsに値を代入
        var params = {
            id: result
        }
        // ajaxで送信処理
        $.ajax({
            url: "/firsts",
            type: "post",
            dataType: 'json',
            data: params
        })
        // // プログレスバーの値変化
        var rial_life = $(".progress-bar").width();
        var life5 = rial_life - result*2;
        $('.progress-bar').css('width', life5);
        // 質問を非表示にしてモーダルを表示
        $.when(
            $('#q_05').fadeOut(),
            $('.progress').fadeOut()
        ).done(function(){
            $("#demoNormalModal").show()
        });
    });
});