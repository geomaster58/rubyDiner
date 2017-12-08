require 'test_helper'

class JustStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @just_style = just_styles(:one)
  end

  test "should get index" do
    get just_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_just_style_url
    assert_response :success
  end

  test "should create just_style" do
    assert_difference('JustStyle.count') do
      post just_styles_url, params: { just_style: { body: @just_style.body, title: @just_style.title } }
    end

    assert_redirected_to just_style_url(JustStyle.last)
  end

  test "should show just_style" do
    get just_style_url(@just_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_just_style_url(@just_style)
    assert_response :success
  end

  test "should update just_style" do
    patch just_style_url(@just_style), params: { just_style: { body: @just_style.body, title: @just_style.title } }
    assert_redirected_to just_style_url(@just_style)
  end

  test "should destroy just_style" do
    assert_difference('JustStyle.count', -1) do
      delete just_style_url(@just_style)
    end

    assert_redirected_to just_styles_url
  end
end
