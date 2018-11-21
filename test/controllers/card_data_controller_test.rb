require 'test_helper'

class CardDataControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers


  test "should get index" do
    sign_in users(:michael)
    get card_data_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:michael)
    get new_card_datum_url
    assert_response :success
  end


  test "should show card_datum" do
    get card_datum_url(@card_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_datum_url(@card_datum)
    assert_response :success
  end

 

  test "should destroy card_datum" do
    assert_difference('CardDatum.count', -1) do
      delete card_datum_url(@card_datum)
    end

    assert_redirected_to card_data_url
  end
end
