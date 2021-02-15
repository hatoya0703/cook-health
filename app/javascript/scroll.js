$(document).on("turbolinks:load",function(){
  $('.jscroll').jscroll({
    // スクロールさせる要素を指定
    contentSelector: '.recipe-lists',
    // 読み込むリンクを指定
    nextSelector: 'span.next a'
  });
});