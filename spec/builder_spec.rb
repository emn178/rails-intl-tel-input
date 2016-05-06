require 'spec_helper'

describe ActionView::Helpers::FormBuilder do
  let(:template) do
    ActionView::Base.new
  end

  describe "#intl_tel_input" do
    let(:builder) { ActionView::Helpers::FormBuilder.new(:item, nil, template, {}) }

    context "with options" do
      subject { builder.intl_tel_input(:tel, :allowDropdown => false) }
      it { should eq "<input data-intl-tel-input=\"{&quot;allowDropdown&quot;:false}\" type=\"hidden\" name=\"item[tel]\" id=\"item_tel\" />" }
    end

    context "without options" do
      subject { builder.intl_tel_input(:tel) }
      it { should eq "<input data-intl-tel-input=\"{}\" type=\"hidden\" name=\"item[tel]\" id=\"item_tel\" />" }
    end
  end
end
