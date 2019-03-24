require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get owners_top_url
    assert_response :success
  end

end
