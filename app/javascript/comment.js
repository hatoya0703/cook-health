$(window).on("load",function(){
  function buildHTML(comment){
    // コメント挿入用要素をセットするファンクションを定義しておく
    const html = `<div class="comment-content">${comment.comment_content}</div>`
    // 代入結果を呼び出し元に戻すためのreturn
    return html;
  }
    // コメント送信した時に発火
    $("#comment-form").on('click',function(e){
      // 送信ボタンの標準動作を停止
      e.preventDefault();
      // 呼び出し元(#comment-form)のフォームの入力データを取得
      const formData = new FormData($(this).get(0));
      // 呼び出し元(#comment-form)のactionの値(/comments)を取得え
      const url = $(this).attr("action");
      $.ajax({
        // コメントフォームの値を、/commentsにJSON形式でPOSTする。
        url: url,
        type: "post",
        data: formData,
        dataType: "json",      // comments/create.json.jbuilderによってフォームから送られたparamsをJSON化
        processData: false,
        contentType: false
      })
      // 通信に成功した場合
      .done(function(data){
        // 変数dataには/commentsにPOSTしたことで取得した、JSON形式のデータが格納されている
        const html = buildHTML(data);
        // 指定した要素の先頭に挿入
        $(".posted-comment").prepend(html);
        // コメント入力フォームを空にする
        $("#comment_comment_content").val("");
        // 送信ボタンを押下フラグをもとに戻す
        $("#comment-submit").prop("disabled", false);
      });
    });
});