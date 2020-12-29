class ApplicationController < ActionController::Base
  # before_action :init, unless: -> { logged_in? }
  # before_action :set_login_user

  def init
    render 'user/login'
  end

  def logged_in?
    session[:login_user] == 'true'
  end
end
