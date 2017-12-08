require 'test_helper'

class CustomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom = customs(:one)
  end

  test "should get index" do
    get customs_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_url
    assert_response :success
  end

  test "should create custom" do
    assert_difference('Custom.count') do
      post customs_url, params: { custom: { description: @custom.description, title: @custom.title } }
    end

    assert_redirected_to custom_url(Custom.last)
  end

  test "should show custom" do
    get custom_url(@custom)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_url(@custom)
    assert_response :success
  end

  test "should update custom" do
    patch custom_url(@custom), params: { custom: { description: @custom.description, title: @custom.title } }
    assert_redirected_to custom_url(@custom)
  end

  test "should destroy custom" do
    assert_difference('Custom.count', -1) do
      delete custom_url(@custom)
    end

    assert_redirected_to customs_url
  end
end
