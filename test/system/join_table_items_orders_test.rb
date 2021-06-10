require "application_system_test_case"

class JoinTableItemsOrdersTest < ApplicationSystemTestCase
  setup do
    @join_table_items_order = join_table_items_orders(:one)
  end

  test "visiting the index" do
    visit join_table_items_orders_url
    assert_selector "h1", text: "Join Table Items Orders"
  end

  test "creating a Join table items order" do
    visit join_table_items_orders_url
    click_on "New Join Table Items Order"

    click_on "Create Join table items order"

    assert_text "Join table items order was successfully created"
    click_on "Back"
  end

  test "updating a Join table items order" do
    visit join_table_items_orders_url
    click_on "Edit", match: :first

    click_on "Update Join table items order"

    assert_text "Join table items order was successfully updated"
    click_on "Back"
  end

  test "destroying a Join table items order" do
    visit join_table_items_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join table items order was successfully destroyed"
  end
end
