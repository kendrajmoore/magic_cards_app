require 'test_helper'

class CardInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card_info = card_infos(:one)
  end

  test "should get index" do
    get card_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_card_info_url
    assert_response :success
  end

  test "should create card_info" do
    assert_difference('CardInfo.count') do
      post card_infos_url, params: { card_info: { colors: @card_info.colors, layout: @card_info.layout, manaCost: @card_info.manaCost, name: @card_info.name, supertypes: @card_info.supertypes, type: @card_info.type, user_id: @card_info.user_id } }
    end

    assert_redirected_to card_info_url(CardInfo.last)
  end

  test "should show card_info" do
    get card_info_url(@card_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_info_url(@card_info)
    assert_response :success
  end

  test "should update card_info" do
    patch card_info_url(@card_info), params: { card_info: { colors: @card_info.colors, layout: @card_info.layout, manaCost: @card_info.manaCost, name: @card_info.name, supertypes: @card_info.supertypes, type: @card_info.type, user_id: @card_info.user_id } }
    assert_redirected_to card_info_url(@card_info)
  end

  test "should destroy card_info" do
    assert_difference('CardInfo.count', -1) do
      delete card_info_url(@card_info)
    end

    assert_redirected_to card_infos_url
  end
end
