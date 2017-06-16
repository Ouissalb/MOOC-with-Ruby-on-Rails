class CoursesController < ApplicationController
   before_action :logged_in_user, only: [:create, :destroy]
   before_action :correct_user,   only: :destroy

  def create
    @course = current_user.courses.build(course_params)
    if @course.save
      flash[:success] = "Course created!"
      redirect_to root_url
    else

      @feed_items = []
      render 'pages/home'
    end
  end



    def destroy
      @course.destroy
      flash[:success] = "Course deleted"
      redirect_to request.referrer || root_url
    end

  private

    def course_params
      params.require(:course).permit(:content)
    end

    def correct_user
     @course = current_user.courses.find_by(id: params[:id])
     redirect_to root_url if @course.nil?
   end
end
