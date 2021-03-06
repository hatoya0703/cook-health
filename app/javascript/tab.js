$(document).on('turbolinks:load', function(){

  if($(".tab-lists").length){   //「tab-lists」classがあるとき条件分岐
    $(".tab-contents > li").css("display", "none");   //最初にすべてのcontent非表示
    $(".tab-contents > li:first-child").css("display", "block");   //その後,１つ目のcontentを表示
    $(".tab-lists > li").each(function(index, element){   //liのHTML要素をすべて取得
      if($(".tab-lists > li:first-child").hasClass( $(this).attr('class'))){   //liの１つ目の要素と同じclassを持っていればtrueの条件分岐
        $(this).addClass('on');   //first-child要素に「on」class付与
      }   /// 条件分岐終了
    });
    $(".tab-lists > li a").click(function(event){
      event.preventDefault();   //クリックによる標準動作（リンク先への遷移）を無効
      $(".tab-contents > li").css("display", "none");   ///一度すべてのli要素を非表示
      $(".tab-lists > li").removeClass("on");   //一度すべてのli要素についている「on」classを消去
      var btn = $(this).parent("li").attr("class");   //変数btnに、発火元（クリックした）のli要素のクラスを格納
      $(".tab-contents > li." + btn).css("visible", "hidden").fadeIn(1000);   //発火元(クリックした)liのclassのcssにvisible:hidden;を付与して非表示にした後、fadeInさせる
      $(this).parent("li").addClass("on");   //発火元のボタンのliタグに「on」classを付与
    });
  }
});