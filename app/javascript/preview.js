document.addEventListener("DOMContentLoaded",function(){
  const ImagePreview = document.getElementById("image-preview");
  document.getElementById("recipe_images").addEventListener("change", function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    const imageElement = document.createElement("div");
    const blobImage = document.createElement("img");
    blobImage.setAttribute("src", blob);
    imageElement.appendChild(blobImage);
    ImagePreview.appendChild(imageElement);
  });
});