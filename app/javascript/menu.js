$(document).on('turbolinks:load', function(){
  $(".btn").on("click",function(event){
    event.preventDefault();
      $(".nav").stop().slideToggle();
    });
});