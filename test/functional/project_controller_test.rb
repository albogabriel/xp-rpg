require 'test_helper'

class ProjectControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get iterations" do
    get :iterations
    assert_response :success
  end

  test "should get stories" do
    get :stories
    assert_response :success
  end

  test "should get requirements" do
    get :requirements
    assert_response :success
  end

end
