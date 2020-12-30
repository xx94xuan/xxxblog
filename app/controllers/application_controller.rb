class ApplicationController < ActionController::Base
  layout 'main'

  before_action :set_login_user

  def init
    render 'user/login'
  end

  def logged_in?
    session[:login_user] == 'true'
  end

  def set_login_user
    if session[:login_user] == 'true' && session[:current_user_id]
      @user = User.find(id: session[:current_user_id])
      session[:user_name] = @user.name
    end
  end
end
