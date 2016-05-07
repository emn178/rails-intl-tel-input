require 'action_view'

module ActionView
  module Helpers
    class FormBuilder
      def intl_tel_input(method, options = {}, html_options = {})
        telephone_field(method, @template.intl_tel_input_options(options, html_options))
      end
    end
  end
end
