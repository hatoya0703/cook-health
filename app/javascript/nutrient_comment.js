$(document).on("turbolinks:load",function(){
  $("label").hover(
    function(){
    console.log(this.textContent)
  },function(){
    console.log("ホバーハズレテスト")
  });
})