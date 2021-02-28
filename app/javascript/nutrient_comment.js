const { getJSON } = require("jquery");

$(document).on("turbolinks:load",function(){
  $("label").hover(
    function(e){
    //ホバーした栄養のcheckboxのvalueの値を変数numに格納
    const nutrientId = this.firstChild.value
    //gon.nutrient_allにはコントローラーの処理でNutrient.allが格納されている。
    //配列gon.nutrient_allの[value - 1]番目のコメントを取得
    const nutrientComment = gon.nutrient_all[nutrientId - 1].nutrient_comment
    //コメント挿入するためのpタグを生成
    $(this).append("<span>");
    $(this.lastChild).addClass("arrow_box");
    //pタグにコメントテキスト挿入
    $(this.lastChild).text(nutrientComment);

    //吹き出しを表示させる座標を決めるため、イベント発火時の座標を取得
    const mouseX = e.clientX
    const mouseY = e.clientY
    //吹き出しのCSSを上書きして、表示座標を指定
    $("span.arrow_box").css({
      "position": "absolute",
      "left": mouseX,
      "top": mouseY
    });

  },function(){
    //挿入したpタグコメントを削除
    $(this.lastChild).remove("span")
  });
})