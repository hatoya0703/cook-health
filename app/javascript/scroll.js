$(document).on("turbolinks:load",function(){
  $('.jscroll').jscroll({
    contentSelector: '.recipe-lists',
    nextSelector: 'span.next a'
  });
});