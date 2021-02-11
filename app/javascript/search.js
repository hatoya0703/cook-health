$(function(){  
  
  $("#formTagInput").autocomplete({
    source: "/recipes/auto_complete.json",
    autoFocus: true,
    minLength: 1
  });
});