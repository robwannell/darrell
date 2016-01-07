require 'test_helper'

class DarrellControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get issues" do
    get :issues
    assert_response :success
  end

end
