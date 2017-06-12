class CoursesController < ApplicationController
   before_action :logged_in_user, only: [:create, :destroy]

  def create
    @micropost = current_user.courses.build(course_params)
    if @micropost.save
      flash[:success] = "Course created!"
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def destroy
  end

  private

    def course_params
      params.require(:course).permit(:content)
    end
end
