require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get courses" do
    get :courses
    assert_response :success
  end

  test "should get programs" do
    get :programs
    assert_response :success
  end

  test "should get schools" do
    get :schools
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

  test "should get signout" do
    get :signout
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
