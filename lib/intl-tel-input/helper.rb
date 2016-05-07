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
      telephone_field_tag(name, value, intl_tel_input_options(options, html_options))
    end
  end
end
