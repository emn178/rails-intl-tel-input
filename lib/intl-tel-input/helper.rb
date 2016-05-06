module IntlTelInput
  module Helper
    def intl_tel_input_options(options, html_options)
      html_options.deep_merge({
        :data => {
          :"intl-tel-input" => options.to_json
        }
      })
    end

    def intl_tel_input_tag(name, value = nil, options = {}, html_options = {})
      hidden_field_tag(name, value, intl_tel_input_options(options, html_options))
    end

    def intl_tel_input(object_name, method, options = {}, html_options = {})
      ActionView::Helpers::Tags::HiddenField.new(object_name, method, self, intl_tel_input_options(options, html_options)).render
    end
  end
end
