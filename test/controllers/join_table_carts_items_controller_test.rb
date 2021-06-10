require 'test_helper'

class JoinTableCartsItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_carts_item = join_table_carts_items(:one)
  end

  test "should get index" do
    get join_table_carts_items_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_carts_item_url
    assert_response :success
  end

  test "should create join_table_carts_item" do
    assert_difference('JoinTableCartsItem.count') do
      post join_table_carts_items_url, params: { join_table_carts_item: {  } }
    end

    assert_redirected_to join_table_carts_item_url(JoinTableCartsItem.last)
  end

  test "should show join_table_carts_item" do
    get join_table_carts_item_url(@join_table_carts_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_carts_item_url(@join_table_carts_item)
    assert_response :success
  end

  test "should update join_table_carts_item" do
    patch join_table_carts_item_url(@join_table_carts_item), params: { join_table_carts_item: {  } }
    assert_redirected_to join_table_carts_item_url(@join_table_carts_item)
  end

  test "should destroy join_table_carts_item" do
    assert_difference('JoinTableCartsItem.count', -1) do
      delete join_table_carts_item_url(@join_table_carts_item)
    end

    assert_redirected_to join_table_carts_items_url
  end
end
