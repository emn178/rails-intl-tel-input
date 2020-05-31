//= require intlTelInput/intlTelInput-jquery
//= require intlTelInput/utils

(function ($) {
  $(document).on('ready page:load turbolinks:load', function () {
    $('[data-intl-tel-input]').each(function () {
      var element = $(this);
      if (element.attr('data-intl-tel-input-init')) {
        return;
      }
      element.attr('data-intl-tel-input-init', 'true');
      var hidden = $('<input type="hidden"/>')
        .attr('name', element.attr('name'))
        .val(element.val())
        .insertAfter(element);
      element.intlTelInput(element.data('intl-tel-input') || {});

      element.removeAttr('name')
        .closest('form').submit(function () {
          hidden.val(element.intlTelInput('getNumber'));
        });
    });
  });
})(jQuery);
