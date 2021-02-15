$(document).on("ready", function(){
  // プレビュー画像挿入先の要素を取得
  const ImagePreview = document.getElementById("image-preview");
  $("#recipe_images").on("change", function(e){
    // event発火元(#recipe_images)のtargetから画像ファイル取得
    const file = e.target.files[0];
    // 画像ファイルのURL発行
    const blob = window.URL.createObjectURL(file);

    //divタグ作成
    const imageElement = document.createElement("div");
    // imgタグ作成
    const blobImage = document.createElement("img");
    // 作成したimgタグにsrcオプションと、値として画像URLを付与
    blobImage.setAttribute("src", blob);
    // 作成したdivタグの子要素として、作成したimg要素を挿入
    imageElement.appendChild(blobImage);
    //3行目で作成した要素に、作成したdiv要素を挿入
    ImagePreview.appendChild(imageElement);
  });
});