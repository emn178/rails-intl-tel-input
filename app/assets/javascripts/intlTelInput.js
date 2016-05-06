//= require intlTelInput/intlTelInput
//= require intlTelInput/intlTelInputUtil

(function ($) {
  $(document).on('ready page:load', function () {
    $('[data-intl-tel-input]').each(function () {
      var element = $(this);
      var options = element.data('intl-tel-input') || {};
      var intlTelInput = $('<input type="tel" />').attr('class', element.attr('class'));
      intlTelInput.insertAfter(element);
      intlTelInput.intlTelInput(options);
      intlTelInput.intlTelInput('setNumber', element.val());
      var change = function () {
        element.val(intlTelInput.intlTelInput('getNumber'));
      };
      intlTelInput.on('countrychange', function () {
        setTimeout(change, 1);
      });
      intlTelInput.on('change', change);
    });
  });
})(jQuery);
