require 'test_helper'

class WafflesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waffle = waffles(:one)
  end

  test "should get index" do
    get waffles_url
    assert_response :success
  end

  test "should get new" do
    get new_waffle_url
    assert_response :success
  end

  test "should create waffle" do
    assert_difference('Waffle.count') do
      post waffles_url, params: { waffle: { body: @waffle.body } }
    end

    assert_redirected_to waffle_url(Waffle.last)
  end

  test "should show waffle" do
    get waffle_url(@waffle)
    assert_response :success
  end

  test "should get edit" do
    get edit_waffle_url(@waffle)
    assert_response :success
  end

  test "should update waffle" do
    patch waffle_url(@waffle), params: { waffle: { body: @waffle.body } }
    assert_redirected_to waffle_url(@waffle)
  end

  test "should destroy waffle" do
    assert_difference('Waffle.count', -1) do
      delete waffle_url(@waffle)
    end

    assert_redirected_to waffles_url
  end
end
