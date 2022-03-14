require 'test_helper'

class TemplateItemTest < ActiveSupport::TestCase
  test "invalid without order" do
    template_item = TemplateItem.new(order: '')
    template_item.valid?
    assert_not template_item.errors[:order].empty?
  end
end
