require "application_system_test_case"

class CardInfosTest < ApplicationSystemTestCase
  setup do
    @card_info = card_infos(:one)
  end

  test "visiting the index" do
    visit card_infos_url
    assert_selector "h1", text: "Card Infos"
  end

  test "creating a Card info" do
    visit card_infos_url
    click_on "New Card Info"

    fill_in "Colors", with: @card_info.colors
    fill_in "Layout", with: @card_info.layout
    fill_in "Manacost", with: @card_info.manaCost
    fill_in "Name", with: @card_info.name
    fill_in "Supertypes", with: @card_info.supertypes
    fill_in "Type", with: @card_info.type
    fill_in "User", with: @card_info.user_id
    click_on "Create Card info"

    assert_text "Card info was successfully created"
    click_on "Back"
  end

  test "updating a Card info" do
    visit card_infos_url
    click_on "Edit", match: :first

    fill_in "Colors", with: @card_info.colors
    fill_in "Layout", with: @card_info.layout
    fill_in "Manacost", with: @card_info.manaCost
    fill_in "Name", with: @card_info.name
    fill_in "Supertypes", with: @card_info.supertypes
    fill_in "Type", with: @card_info.type
    fill_in "User", with: @card_info.user_id
    click_on "Update Card info"

    assert_text "Card info was successfully updated"
    click_on "Back"
  end

  test "destroying a Card info" do
    visit card_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card info was successfully destroyed"
  end
end
