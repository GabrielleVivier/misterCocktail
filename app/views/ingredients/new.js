console.debug('new coucou');

var modal_form = $('<%= escape_javascript(render "modal", ingredient: @ingredient) %>');

modal_form
  .modal()
  .on('ajax:success', function() {
    modal_form.modal('hide');
  });

