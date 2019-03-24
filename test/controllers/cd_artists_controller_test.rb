require 'test_helper'

class CdArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cd_artists_new_url
    assert_response :success
  end

  test "should get create" do
    get cd_artists_create_url
    assert_response :success
  end

  test "should get index" do
    get cd_artists_index_url
    assert_response :success
  end

  test "should get show" do
    get cd_artists_show_url
    assert_response :success
  end

  test "should get edit" do
    get cd_artists_edit_url
    assert_response :success
  end

  test "should get update" do
    get cd_artists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cd_artists_destroy_url
    assert_response :success
  end

end
