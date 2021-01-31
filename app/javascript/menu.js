$(window).on("load", function(){
  $(".btn").click(function(event){
    event.preventDefault();
      $(".nav").stop().slideToggle();
    });
});