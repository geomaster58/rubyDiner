require 'test_helper'

class Custom3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom3 = custom3s(:one)
  end

  test "should get index" do
    get custom3s_url
    assert_response :success
  end

  test "should get new" do
    get new_custom3_url
    assert_response :success
  end

  test "should create custom3" do
    assert_difference('Custom3.count') do
      post custom3s_url, params: { custom3: { description: @custom3.description, title: @custom3.title } }
    end

    assert_redirected_to custom3_url(Custom3.last)
  end

  test "should show custom3" do
    get custom3_url(@custom3)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom3_url(@custom3)
    assert_response :success
  end

  test "should update custom3" do
    patch custom3_url(@custom3), params: { custom3: { description: @custom3.description, title: @custom3.title } }
    assert_redirected_to custom3_url(@custom3)
  end

  test "should destroy custom3" do
    assert_difference('Custom3.count', -1) do
      delete custom3_url(@custom3)
    end

    assert_redirected_to custom3s_url
  end
end
