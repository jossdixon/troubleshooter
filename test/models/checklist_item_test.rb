require 'test_helper'

class ChecklistItemTest < ActiveSupport::TestCase
  test "invalid without order" do
    checklist_item = ChecklistItem.new(order: '')
    checklist_item.valid?
    assert_not checklist_item.errors[:order].empty?
  end
end
