$(function() {

  $("#add-element").click( function(e) {
    console.debug($("#form-add-element"));
    $("#form-add-element").removeClass("js-display-none");
    console.debug($("#form-add-element"));
  });

  $("#close-form").click(function() {
    $(this).parent().addClass("js-display-none");
  });

  $("#add-ingredient").click( function(e) {
    console.debug($(this).data('url'));
    $.get($(this).data('url'), function(data) {
      console.debug('coucou');
    });
  });
});
