require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get regest" do
    get user_regest_url
    assert_response :success
  end

end
