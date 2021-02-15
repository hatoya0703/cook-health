$(function(){  
  
  $("#formTagInput").autocomplete({
    source: "/recipes/auto_complete.json",
    autoFocus: true,
    minLength: 1
  });
});

// JQuery-UIに備わっているauto-complete機能を使用するため、未使用