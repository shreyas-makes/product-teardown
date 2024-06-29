require "test_helper"

class TeardownsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teardowns_new_url
    assert_response :success
  end

  test "should get create" do
    get teardowns_create_url
    assert_response :success
  end

  test "should get edit" do
    get teardowns_edit_url
    assert_response :success
  end

  test "should get update" do
    get teardowns_update_url
    assert_response :success
  end

  test "should get show" do
    get teardowns_show_url
    assert_response :success
  end
end
