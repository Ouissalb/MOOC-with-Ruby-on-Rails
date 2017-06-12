require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
     #get signup_path
    assert_response :success
  end

  def setup
    @user = users(:ouissal)
    @other_user = users(:elliot)
  end

=begin  
  test "should not allow the admin attribute to be edited via the web" do
    log_in_as(@other_user)
    assert_not @other_user.admin?
    patch user_path(@other_user),
                                    user: { password:              "password",
                                            password_confirmation: "password",
                                            admin: true }
    assert_not @other_user.reload.admin?
  end



  test "should redirect index when not logged in" do
   get :users
   assert_redirected_to login_url
 end


  test "should redirect edit when not logged in" do
   get edit_user_path(@user)
   assert_not flash.empty?
   assert_redirected_to login_url
 end

 test "should redirect update when not logged in" do
   patch user_path(@user),  user: { name: @user.name,
                                             email: @user.email }
   assert_not flash.empty?
   assert_redirected_to login_url

  end
=end
end
