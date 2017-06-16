class PagesController < ApplicationController

  def home
    if logged_in?
      @course  = current_user.courses.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end


  def courses
  end

  def programs
  end

  def schools
  end

  def dashboard
  end

  def profile
  end

  def account
  end

  def signout
  end

  def help
  end
end
