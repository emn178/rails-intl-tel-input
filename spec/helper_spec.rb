require 'spec_helper'

describe IntlTelInput::Helper do
  include IntlTelInput::Helper
  include ActionView::Helpers::FormTagHelper

  describe "#intl_tel_input_tag" do
    context "with value" do
      context "with options" do
        context "with html_options" do
          subject { intl_tel_input_tag(:tel, 'black', {:allowDropdown => false}, {:class => :tel}) }
          it { should eq "<input type=\"hidden\" name=\"tel\" id=\"tel\" value=\"black\" class=\"tel\" data-intl-tel-input=\"{&quot;allowDropdown&quot;:false}\" />" }
        end

        context "without html_options" do
          subject { intl_tel_input_tag(:tel, 'black', :allowDropdown => false) }
          it { should eq "<input type=\"hidden\" name=\"tel\" id=\"tel\" value=\"black\" data-intl-tel-input=\"{&quot;allowDropdown&quot;:false}\" />" }
        end
      end

      context "without options" do
        context "with html_options" do
          subject { intl_tel_input_tag(:tel, 'black', nil, :class => :tel) }
          it { should eq "<input type=\"hidden\" name=\"tel\" id=\"tel\" value=\"black\" class=\"tel\" data-intl-tel-input=\"null\" />" }
        end

        context "without html_options" do
          subject { intl_tel_input_tag(:tel, 'black') }
          it { should eq "<input type=\"hidden\" name=\"tel\" id=\"tel\" value=\"black\" data-intl-tel-input=\"{}\" />" }
        end
      end
    end

    context "with value" do
      subject { intl_tel_input_tag(:tel) }
      it { should eq "<input type=\"hidden\" name=\"tel\" id=\"tel\" data-intl-tel-input=\"{}\" />" }
    end
  end
end
