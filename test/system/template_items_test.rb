require "application_system_test_case"

class TemplateItemsTest < ApplicationSystemTestCase
  setup do
    @template_item = template_items(:one)
  end

  test "visiting the index" do
    visit template_items_url
    assert_selector "h1", text: "Template Items"
  end

  test "creating a Template item" do
    visit template_items_url
    click_on "New Template Item"

    fill_in "Order", with: @template_item.order
    fill_in "Template", with: @template_item.template_id
    click_on "Create Template item"

    assert_text "Template item was successfully created"
    click_on "Back"
  end

  test "updating a Template item" do
    visit template_items_url
    click_on "Edit", match: :first

    fill_in "Order", with: @template_item.order
    fill_in "Template", with: @template_item.template_id
    click_on "Update Template item"

    assert_text "Template item was successfully updated"
    click_on "Back"
  end

  test "destroying a Template item" do
    visit template_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Template item was successfully destroyed"
  end
end
