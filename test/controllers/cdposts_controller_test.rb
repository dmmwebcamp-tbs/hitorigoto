require 'test_helper'

class CdpostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cdposts_index_url
    assert_response :success
  end

  test "should get new" do
    get cdposts_new_url
    assert_response :success
  end

  test "should get create" do
    get cdposts_create_url
    assert_response :success
  end

  test "should get edit" do
    get cdposts_edit_url
    assert_response :success
  end

  test "should get update" do
    get cdposts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cdposts_destroy_url
    assert_response :success
  end

end
