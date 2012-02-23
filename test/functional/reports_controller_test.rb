require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get main" do
    get :index
    assert_response :success
  end

  test "should get businessValueReport" do
    get :businessValueReport
    assert_response :success
  end

  test "should get requirementsReport" do
    get :requirementsReport
    assert_response :success
  end

  test "should get mainGoalReport" do
    get :mainGoalReport
    assert_response :success
  end

  test "should get defectsReport" do
    get :defectsReport
    assert_response :success
  end

end
