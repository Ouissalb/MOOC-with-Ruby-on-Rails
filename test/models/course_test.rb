require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   def setup
     @user = users(:ouissal)
     @course = Course.new(content: "Lorem ipsum", user_id: @user.id)
   end

   test "should be valid" do
     assert @course.valid?
   end

   test "user id should be present" do
     @course.user_id = nil
     assert_not @course.valid?
   end

   test "content should be present" do
    @course.content = "   "
    assert_not @course.valid?
  end

    test "content should be at most 140 characters" do
      @course.content = "a" * 141
      assert_not @course.valid?
    end

end
