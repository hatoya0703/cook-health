const { getJSON } = require("jquery");

$(document).on("turbolinks:load",function(){
  $("label").hover(
    function(e){
    
    const nutrientId = this.firstChild.value  //ホバーした栄養のcheckboxのvalueの値を格納
    const nutrientLink = `nutrients/${nutrientId}`  //発火元のnutrients#showのリンクを変数に格納
    const nutrientComment = gon.nutrient_all[nutrientId - 1].nutrient_comment  //配列gon.nutrient_allの[value - 1]番目のコメントを取得(gon.nutrient_allにはコントローラーの処理でNutrient.allが格納されている。)
    $(this).append("<div>");  //コメント挿入するためのdiv要素を生成
    $(this.lastChild).addClass("arrow_box");  //生成したdiv要素にクラス名arrow_boxを付与
    $(this).children(".arrow_box").append("<span>"); //生成した.arrow_boxの子要素としてspan要素生成
    $(this).find("span").text(nutrientComment);  //生成したspan要素に栄養コメントのテキスト挿入
    $(this).children(".arrow_box").append("<a>");  //栄養詳細ページに飛ぶ為のリンクを挿入するためのa要素を生成
    $(this).find("a").attr("href",nutrientLink );  //生成したa要素に変数を用いてリンクを設定
    $(this).find("a").text("栄養の詳細情報を見る");  //a要素テキストを挿入

    //吹き出しを表示させる座標を決めるため、イベント発火時の座標を取得
    const mouseX = e.clientX
    const mouseY = e.clientY

    //吹き出しのCSSを上書きして、吹き出しの表示座標を指定
    $(".arrow_box").css({
      "position": "absolute",
      "left": mouseX,
      "top": mouseY
    });

  },function(){
    $(this.children).remove(".arrow_box")  //挿入した吹き出し要素群.arrow_boxを削除
  });
})