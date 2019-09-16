require "application_system_test_case"

class SocksTest < ApplicationSystemTestCase
  setup do
    @sock = socks(:one)
  end

  test "visiting the index" do
    visit socks_url
    assert_selector "h1", text: "Socks"
  end

  test "creating a Sock" do
    visit socks_url
    click_on "New Sock"

    fill_in "Description", with: @sock.description
    fill_in "Model", with: @sock.model
    fill_in "Price", with: @sock.price
    fill_in "Title", with: @sock.title
    click_on "Create Sock"

    assert_text "Sock was successfully created"
    click_on "Back"
  end

  test "updating a Sock" do
    visit socks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sock.description
    fill_in "Model", with: @sock.model
    fill_in "Price", with: @sock.price
    fill_in "Title", with: @sock.title
    click_on "Update Sock"

    assert_text "Sock was successfully updated"
    click_on "Back"
  end

  test "destroying a Sock" do
    visit socks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sock was successfully destroyed"
  end
end
