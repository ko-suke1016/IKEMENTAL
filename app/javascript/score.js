
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
            data: params
        })
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('div').fadeOut()
        ).done(function(){
            $('div').next(clickButtonHref).fadeIn()
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
            data: params
        })
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('div').fadeOut()
        ).done(function(){
            $('div').next(clickButtonHref).fadeIn()
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
            data: params
        })
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('div').fadeOut()
        ).done(function(){
            $('div').next(clickButtonHref).fadeIn()
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
            data: params
        })
        // 次の質問に遷移
        var clickButtonHref = $(this).attr('href');
        $.when(
            $('div').fadeOut()
        ).done(function(){
            $('div').next(clickButtonHref).fadeIn()
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
            data: params
        })
        // 質問を非表示にしてモーダルを表示
        $('div').fadeOut();
    });
})