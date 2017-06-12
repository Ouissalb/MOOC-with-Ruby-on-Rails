class PagesController < ApplicationController

  def home
    @course = current_user.courses.build if logged_in?
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
