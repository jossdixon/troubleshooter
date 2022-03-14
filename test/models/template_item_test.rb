require 'test_helper'

class TemplateItemTest < ActiveSupport::TestCase
  test "invalid without action" do
    template_item = TemplateItem.new(order: 1, action: '')
    template_item.valid?
    assert_not template_item.errors[:action].empty?
  end

  test "invalid without order" do
    template_item = TemplateItem.new(order: '', action: 'testing')
    template_item.valid?
    assert_not template_item.errors[:order].empty?
  end
end
