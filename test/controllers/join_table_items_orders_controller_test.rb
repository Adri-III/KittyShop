require 'test_helper'

class JoinTableItemsOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_items_order = join_table_items_orders(:one)
  end

  test "should get index" do
    get join_table_items_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_items_order_url
    assert_response :success
  end

  test "should create join_table_items_order" do
    assert_difference('JoinTableItemsOrder.count') do
      post join_table_items_orders_url, params: { join_table_items_order: {  } }
    end

    assert_redirected_to join_table_items_order_url(JoinTableItemsOrder.last)
  end

  test "should show join_table_items_order" do
    get join_table_items_order_url(@join_table_items_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_items_order_url(@join_table_items_order)
    assert_response :success
  end

  test "should update join_table_items_order" do
    patch join_table_items_order_url(@join_table_items_order), params: { join_table_items_order: {  } }
    assert_redirected_to join_table_items_order_url(@join_table_items_order)
  end

  test "should destroy join_table_items_order" do
    assert_difference('JoinTableItemsOrder.count', -1) do
      delete join_table_items_order_url(@join_table_items_order)
    end

    assert_redirected_to join_table_items_orders_url
  end
end
