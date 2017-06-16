require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  def setup
    @course = courses(:c_video)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Course.count' do
      post courses_path,  course: { content: "Lorem ipsum" } 
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Course.count' do
      delete course_path(@course)
    end
    assert_redirected_to login_url
  end
  
    test "should redirect destroy for wrong course" do
    log_in_as(users(:ouissal))
    course = courses(:javascript)
    assert_no_difference 'Course.count' do
      delete course_path(course)
    end
    assert_redirected_to root_url
  end

end
