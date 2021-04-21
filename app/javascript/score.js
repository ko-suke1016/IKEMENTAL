
$(document).on('turbolinks:load', function() {
    $(".send_data_selection1").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // hiddenフィールドの値を変更
        $("#send_data").val(result);
    });

    $(".send_data_selection2").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // hiddenフィールドの値を変更
        $("#send_data").val(result);
    });

    $(".send_data_selection3").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // hiddenフィールドの値を変更
        $("#send_data").val(result);
    });

    $(".send_data_selection4").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // hiddenフィールドの値を変更
        $("#send_data").val(result);
    });

    $(".send_data_selection5").on('click',function(){
        var target = $(this);
        // 対象となる要素の文字色を選択されたものに変更
        target.css("color", "#0000FF");
        // クリックされた要素の指定するIDを取得
        var result = target.data("send-id");
        // hiddenフィールドの値を変更
        $("#send_data").val(result);
    });
})