require "application_system_test_case"

class CardDataTest < ApplicationSystemTestCase
  setup do
    @card_datum = card_data(:one)
  end

  test "visiting the index" do
    visit card_data_url
    assert_selector "h1", text: "Card Data"
  end

  test "creating a Card datum" do
    visit card_data_url
    click_on "New Card Datum"

    fill_in "Colors", with: @card_datum.colors
    fill_in "Layout", with: @card_datum.layout
    fill_in "Manacost", with: @card_datum.manaCost
    fill_in "Name", with: @card_datum.name
    fill_in "Supertypes", with: @card_datum.supertypes
    fill_in "User", with: @card_datum.user_id
    click_on "Create Card datum"

    assert_text "Card datum was successfully created"
    click_on "Back"
  end

  test "updating a Card datum" do
    visit card_data_url
    click_on "Edit", match: :first

    fill_in "Colors", with: @card_datum.colors
    fill_in "Layout", with: @card_datum.layout
    fill_in "Manacost", with: @card_datum.manaCost
    fill_in "Name", with: @card_datum.name
    fill_in "Supertypes", with: @card_datum.supertypes
    fill_in "User", with: @card_datum.user_id
    click_on "Update Card datum"

    assert_text "Card datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Card datum" do
    visit card_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card datum was successfully destroyed"
  end
end
