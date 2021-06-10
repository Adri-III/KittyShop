require "application_system_test_case"

class JoinTableCartsItemsTest < ApplicationSystemTestCase
  setup do
    @join_table_carts_item = join_table_carts_items(:one)
  end

  test "visiting the index" do
    visit join_table_carts_items_url
    assert_selector "h1", text: "Join Table Carts Items"
  end

  test "creating a Join table carts item" do
    visit join_table_carts_items_url
    click_on "New Join Table Carts Item"

    click_on "Create Join table carts item"

    assert_text "Join table carts item was successfully created"
    click_on "Back"
  end

  test "updating a Join table carts item" do
    visit join_table_carts_items_url
    click_on "Edit", match: :first

    click_on "Update Join table carts item"

    assert_text "Join table carts item was successfully updated"
    click_on "Back"
  end

  test "destroying a Join table carts item" do
    visit join_table_carts_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join table carts item was successfully destroyed"
  end
end
