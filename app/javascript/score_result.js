$(document).ready( function(){
var review = $('#result_page').data('reviews');
// countup
var life_score = 100-review;
$({count: 0}).animate({count: life_score}, {
	duration: 2500,
	easing: 'linear',
	progress: function() {
	$('#result_score span').text(Math.ceil(this.count));
	}
});

// 残りlife数値
// 送られてきた値を２倍して200からひく
var life2 = 200 - review*2;
// countdown
$({count: 200}).animate({count: life2}, {
	duration: 2000,
	easing: 'linear',
	progress: function() {
$('#life2 span').text(Math.ceil(this.count));
}
});
// プログレスバーの値変化
$('.progress-bar').css('width', life2);
});