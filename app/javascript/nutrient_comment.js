const { getJSON } = require("jquery");

$(document).on("turbolinks:load",function(){
  $("label").hover(
    function(){
    //ホバーした栄養のcheckboxのvalueの値を変数numに格納
    const num = this.firstChild.value
    //gon.nutrient_allにはコントローラーの処理でNutrient.allが格納されている。
    //配列gon.nutrient_allの[value - 1]番目のコメントを取得
    const nut_com = gon.nutrient_all[num - 1].nutrient_comment
    
  },function(){
    console.log("ホバーハズレテスト")
  });
})