$(document).on('turbolinks:load', function() {
  $(function() {
    $('.swiper-wrapper').slick({
      autoplay: true,
      infinite: true,　
      autoplaySpeed: 0,
      speed: 20000,
      cssEase: "linear",
      slidesToShow: 1,
      swipe: false,
      arrows: false,
      pauseOnFocus: false,
      pauseOnHover: false,
      variableWidth: true,
    });
  });

  $(function() {
  $('.slider').slick({
    dots: true,　　　　　　//スライドしたのドット
    arrows: false,          //左右の矢印
    infinite: true,　　　　//スライドのループ
    pauseOnHover: false,   //ホバーしたときにスライドを一時停止しない　
  });
  })
});

