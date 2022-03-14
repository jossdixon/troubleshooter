require 'test_helper'

class TemplateItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @template_item = template_items(:one)
  end

  test "should get index" do
    get template_items_url
    assert_response :success
  end

  test "should get new" do
    get new_template_item_url
    assert_response :success
  end

  test "should create template_item" do
    assert_difference('TemplateItem.count') do
      post template_items_url, params: {
        template_item: {
          order: @template_item.order,
          template_id: @template_item.template_id,
          action: @template_item.action
        }
      }
    end

    assert_redirected_to template_item_url(TemplateItem.last)
  end

  test "cannot create template item with invalid attributes" do
    assert_no_difference('TemplateItem.count') do
      post template_items_url, params: {
        template_item: {
          order: 1,
          template_id: @template_item.template_id,
          action: ''
        }
      }
    end
  end

  test "should show template_item" do
    get template_item_url(@template_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_template_item_url(@template_item)
    assert_response :success
  end

  test "should update template_item" do
    patch template_item_url(@template_item), params: {
      template_item: {
        order: @template_item.order,
        template_id: @template_item.template_id,
        action: "update test"
      }
    }
    assert_redirected_to template_item_url(@template_item)
  end

  test "should destroy template_item" do
    assert_difference('TemplateItem.count', -1) do
      delete template_item_url(@template_item)
    end

    assert_redirected_to template_items_url
  end
end
