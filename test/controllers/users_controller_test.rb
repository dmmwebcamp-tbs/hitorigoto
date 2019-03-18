require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get unsubscribe" do
    get users_unsubscribe_url
    assert_response :success
  end

  test "should get destroy" do
    get users_destroy_url
    assert_response :success
  end

  test "should get history" do
    get users_history_url
    assert_response :success
  end

end
