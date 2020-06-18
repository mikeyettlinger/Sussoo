require "application_system_test_case"

class MerchLineItemsTest < ApplicationSystemTestCase
  setup do
    @merch_line_item = merch_line_items(:one)
  end

  test "visiting the index" do
    visit merch_line_items_url
    assert_selector "h1", text: "Merch Line Items"
  end

  test "creating a Merch line item" do
    visit merch_line_items_url
    click_on "New Merch Line Item"

    fill_in "Cart", with: @merch_line_item.cart_id
    fill_in "Merch", with: @merch_line_item.merch_id
    click_on "Create Merch line item"

    assert_text "Merch line item was successfully created"
    click_on "Back"
  end

  test "updating a Merch line item" do
    visit merch_line_items_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @merch_line_item.cart_id
    fill_in "Merch", with: @merch_line_item.merch_id
    click_on "Update Merch line item"

    assert_text "Merch line item was successfully updated"
    click_on "Back"
  end

  test "destroying a Merch line item" do
    visit merch_line_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Merch line item was successfully destroyed"
  end
end
