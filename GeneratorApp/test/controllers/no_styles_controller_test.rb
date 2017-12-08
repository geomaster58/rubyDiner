require 'test_helper'

class NoStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_style = no_styles(:one)
  end

  test "should get index" do
    get no_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_no_style_url
    assert_response :success
  end

  test "should create no_style" do
    assert_difference('NoStyle.count') do
      post no_styles_url, params: { no_style: { body: @no_style.body, title: @no_style.title } }
    end

    assert_redirected_to no_style_url(NoStyle.last)
  end

  test "should show no_style" do
    get no_style_url(@no_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_style_url(@no_style)
    assert_response :success
  end

  test "should update no_style" do
    patch no_style_url(@no_style), params: { no_style: { body: @no_style.body, title: @no_style.title } }
    assert_redirected_to no_style_url(@no_style)
  end

  test "should destroy no_style" do
    assert_difference('NoStyle.count', -1) do
      delete no_style_url(@no_style)
    end

    assert_redirected_to no_styles_url
  end
end
