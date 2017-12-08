require 'test_helper'

class NoJavasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_java = no_javas(:one)
  end

  test "should get index" do
    get no_javas_url
    assert_response :success
  end

  test "should get new" do
    get new_no_java_url
    assert_response :success
  end

  test "should create no_java" do
    assert_difference('NoJava.count') do
      post no_javas_url, params: { no_java: { body: @no_java.body, title: @no_java.title } }
    end

    assert_redirected_to no_java_url(NoJava.last)
  end

  test "should show no_java" do
    get no_java_url(@no_java)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_java_url(@no_java)
    assert_response :success
  end

  test "should update no_java" do
    patch no_java_url(@no_java), params: { no_java: { body: @no_java.body, title: @no_java.title } }
    assert_redirected_to no_java_url(@no_java)
  end

  test "should destroy no_java" do
    assert_difference('NoJava.count', -1) do
      delete no_java_url(@no_java)
    end

    assert_redirected_to no_javas_url
  end
end
