require 'test_helper'

class TemplateTest < ActiveSupport::TestCase
  test "invalid without a name" do
    template = Template.new(name: '')
    template.valid?
    assert_not template.errors[:name].empty?
  end
end
