$(function(){  
  
  $("#recipe_ingredient_tag_name").autocomplete({
    source: "/recipes/auto_complete.json",
    autoFocus: true,
    minLength: 1
  });
});