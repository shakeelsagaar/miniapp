require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get attend" do
    get :attend
    assert_response :success
  end

end
