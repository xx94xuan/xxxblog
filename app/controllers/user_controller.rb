class UserController < ApplicationController
  layout 'main'

  def new
  end

  def login
  end

  def logout
    if session[:login_user] == true
      session[:login_user] = false
      session[:user_name] = nil
      session[:current_user_id] = nil
    end
    redirect_to user_login_path
  end

  def create
    begin
      exsit_user = User.find_by({name: user_params[:name]})
      if exsit_user
        flash[:error] = "Username has been taken, try another one."
        redirect_to new_user_path
      end
    rescue Mongoid::Errors::DocumentNotFound
      @user = User.new(user_params)
      @user.created_at = DateTime.now
      if @user.save
        # flash[:notice] = "#{@user.name} has been created, click Login to surfing"
        redirect_to user_login_path({:params => user_params})
      else
        flash[:error] = "Failed to save user, try again."
        redirect_to new_user_path
      end
    end
  end

  def validate_user
    begin
      @user = User.find_by(user_params)
      session[:login_user] = true
      session[:current_user_id] = @user.id
      redirect_to pieces_path
    rescue
      flash[:error] = "User Name OR Password incorrect. Try again."
      redirect_to user_login_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :upadted_at, :created_at)
  end
end
