require 'spec_helper'

describe ActionView::Helpers::FormBuilder do
  class User
    def tel
      '+886987654321'
    end
  end

  let(:template) do
    ActionView::Base.new
  end

  describe "#intl_tel_input" do
    let(:user) { User.new }
    let(:builder) { ActionView::Helpers::FormBuilder.new(:item, user, template, {}) }

    context "with options" do
      subject { builder.intl_tel_input(:tel, :allowDropdown => false) }
      it { should eq "<input data-intl-tel-input=\"{&quot;allowDropdown&quot;:false}\" type=\"tel\" value=\"+886987654321\" name=\"item[tel]\" id=\"item_tel\" />" }
    end

    context "without options" do
      subject { builder.intl_tel_input(:tel) }
      it { should eq "<input data-intl-tel-input=\"{}\" type=\"tel\" value=\"+886987654321\" name=\"item[tel]\" id=\"item_tel\" />" }
    end
  end
end
