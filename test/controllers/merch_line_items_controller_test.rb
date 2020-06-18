require 'test_helper'

class MerchLineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merch_line_item = merch_line_items(:one)
  end

  test "should get index" do
    get merch_line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_merch_line_item_url
    assert_response :success
  end

  test "should create merch_line_item" do
    assert_difference('MerchLineItem.count') do
      post merch_line_items_url, params: { merch_line_item: { cart_id: @merch_line_item.cart_id, merch_id: @merch_line_item.merch_id } }
    end

    assert_redirected_to merch_line_item_url(MerchLineItem.last)
  end

  test "should show merch_line_item" do
    get merch_line_item_url(@merch_line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_merch_line_item_url(@merch_line_item)
    assert_response :success
  end

  test "should update merch_line_item" do
    patch merch_line_item_url(@merch_line_item), params: { merch_line_item: { cart_id: @merch_line_item.cart_id, merch_id: @merch_line_item.merch_id } }
    assert_redirected_to merch_line_item_url(@merch_line_item)
  end

  test "should destroy merch_line_item" do
    assert_difference('MerchLineItem.count', -1) do
      delete merch_line_item_url(@merch_line_item)
    end

    assert_redirected_to merch_line_items_url
  end
end
