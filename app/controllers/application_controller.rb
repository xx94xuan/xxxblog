class ApplicationController < ActionController::Base

  def init
    render 'user/login'
  end

  def logged_in?
    session[:login_user] == 'true'
  end
end
