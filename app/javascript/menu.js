$(document).on('turbolinks:load', function(){
  $(".btn").on("click",function(e){
    e.preventDefault();
      // display:none;が設定してあるnavクラスを、slideToggleで表示させる
      $(".nav").stop().slideToggle();
    });
});