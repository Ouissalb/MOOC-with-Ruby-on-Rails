require 'test_helper'

class PagesControllerTest < ActionController::TestCase


  def setup
    @base_title = "MOOC"
  end


  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get courses" do
    get :courses
    assert_response :success
    assert_select "title", "Courses | #{@base_title}"
  end

  test "should get programs" do
    get :programs
    assert_response :success
        assert_select "title", "Programs | #{@base_title}"
  end

  test "should get schools" do
    get :schools
    assert_response :success
        assert_select "title", "Schools | #{@base_title}"

  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
        assert_select "title", "Dashboard | #{@base_title}"
  end

  test "should get profile" do
    get :profile
    assert_response :success
    assert_select "title", "Profile | #{@base_title}"
  end

  test "should get account" do
    get :account
    assert_response :success
    assert_select "title", "Account | #{@base_title}"
  end

  test "should get signout" do
    get :signout
    assert_response :success
    assert_select "title", "Signout | #{@base_title}"
  end

  test "should get help" do
     get :help
  #  get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

end
