require "application_system_test_case"

class MerchesTest < ApplicationSystemTestCase
  setup do
    @merch = merches(:one)
  end

  test "visiting the index" do
    visit merches_url
    assert_selector "h1", text: "Merches"
  end

  test "creating a Merch" do
    visit merches_url
    click_on "New Merch"

    fill_in "Category", with: @merch.category
    fill_in "Description", with: @merch.description
    fill_in "Price", with: @merch.price
    fill_in "Quantity", with: @merch.quantity
    fill_in "Size", with: @merch.size
    fill_in "Title", with: @merch.title
    click_on "Create Merch"

    assert_text "Merch was successfully created"
    click_on "Back"
  end

  test "updating a Merch" do
    visit merches_url
    click_on "Edit", match: :first

    fill_in "Category", with: @merch.category
    fill_in "Description", with: @merch.description
    fill_in "Price", with: @merch.price
    fill_in "Quantity", with: @merch.quantity
    fill_in "Size", with: @merch.size
    fill_in "Title", with: @merch.title
    click_on "Update Merch"

    assert_text "Merch was successfully updated"
    click_on "Back"
  end

  test "destroying a Merch" do
    visit merches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Merch was successfully destroyed"
  end
end
