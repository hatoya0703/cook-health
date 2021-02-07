$(document).on('turbolinks:load', function(){
  var date = [
    "aaaa",
    "bbbb",
    "cccc",
  ];
  $("#suggest").autocomplete({
    source: date,
    autoFocus: true,
    delay: 300,
    minLength: 1
  });
});