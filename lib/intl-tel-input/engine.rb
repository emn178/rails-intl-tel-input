if defined?(::Rails::Engine)
  module IntlTelInput
    class Engine < ::Rails::Engine
      initializer "intl-tel-input" do
        ActiveSupport.on_load(:action_view) do
          include IntlTelInput::Helper
        end
      end
    end
  end
end
