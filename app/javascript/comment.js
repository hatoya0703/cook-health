$(window).on("load",function(){
  function buildHTML(comment){
    // コメント挿入用要素をセットするファンクションを定義しておく
    const html = `<div class="comment-content">${comment.comment_content}</div>`
    return html
  }
    $("#comment-form").on("submit",function(e){
      e.preventDefault;
      const formData = new FormData($(this).get(0));
      const url = $(this).attr("action");
      $.ajax({
        url: url,
        type: "post",
        data: formData,
        dataType: "json",
        processData: false,
        contentType: false
      })
      .done(function(data){
        const html = buildHTML(data);
        $(".posted-comment").prepend(html);
        $("#comment_comment_content").val("");
        $("#comment-submit").prop("disabled", false);
      });
    });
});