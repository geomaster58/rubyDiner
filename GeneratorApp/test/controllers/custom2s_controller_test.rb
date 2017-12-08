require 'test_helper'

class Custom2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom2 = custom2s(:one)
  end

  test "should get index" do
    get custom2s_url
    assert_response :success
  end

  test "should get new" do
    get new_custom2_url
    assert_response :success
  end

  test "should create custom2" do
    assert_difference('Custom2.count') do
      post custom2s_url, params: { custom2: { description: @custom2.description, title: @custom2.title } }
    end

    assert_redirected_to custom2_url(Custom2.last)
  end

  test "should show custom2" do
    get custom2_url(@custom2)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom2_url(@custom2)
    assert_response :success
  end

  test "should update custom2" do
    patch custom2_url(@custom2), params: { custom2: { description: @custom2.description, title: @custom2.title } }
    assert_redirected_to custom2_url(@custom2)
  end

  test "should destroy custom2" do
    assert_difference('Custom2.count', -1) do
      delete custom2_url(@custom2)
    end

    assert_redirected_to custom2s_url
  end
end
