$(document).on("turbolinks:load",function(){
  
  $("#formTagInput").tagsInput({
    'autocomplete_url': "auto_complete.json",
    'autocomplete':{
      focus: function(event, ui){
        $("#formTagInput_tag").val(ui.item.name);
        return false;
      },
      select: function(event, ui){
        $("#formTagInput").addTag(ui.item.name);
        return false;
      }
    },
    'height': 'calc(2.25rem + 2px)',
    'width' : '100%',
    'defaultText': ''
  })

  if($("#formTagInput_tag").length){
    $("#formTagInput_tag").data('ui-autocomplete')._renderItem = function(ui,item){
      return $('<li class="w-100>').data('item.autocomplete', item).append('<a class="w-100 d-flex">' + item.name + '</a>')
        .appendTo(ul);
    }
  }
});