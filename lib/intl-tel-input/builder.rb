require 'action_view'

module ActionView
  module Helpers
    class FormBuilder
      def intl_tel_input(method, options = {}, html_options = {})
        @template.intl_tel_input(@object_name, method, options, html_options)
      end
    end
  end
end
