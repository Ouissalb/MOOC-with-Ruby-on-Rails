require 'test_helper'

class CoursesInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:ouissal)
  end

  test "course interface" do
    log_in_as(@user)
    get root_path
    assert_select 'div.pagination'
    # Invalid submission
    assert_no_difference 'Course.count' do
      post courses_path, course: { content: "" } 
    end
    assert_select 'div#error_explanation'
    # Valid submission
    content = "This course really ties the room together"
    assert_difference 'Course.count', 1 do
      post courses_path,  course: { content: content } 
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match content, response.body
    # Delete post
    assert_select 'a', text: 'delete'
    first_course = @user.courses.paginate(page: 1).first
    assert_difference 'Course.count', -1 do
      delete course_path(first_course)
    end
    # Visit different user (no delete links)
    get user_path(users(:elliot))
    assert_select 'a', text: 'delete', count: 0
  end
  
end
