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
end
