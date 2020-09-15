class UserController < ApplicationController
  def new
  end

  def login
  end

  def validate_user
    begin
      @user = User.find_by(user_params)
      session[:login_user] = 'true'
      session[:current_user_id] = @user.id
      redirect_to pieces_path
    rescue
      flash[:error] = "User Name OR Password incorrect. Try again."
      redirect_to user_login_path
    end
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
        redirect_to user_login_path({:params => user_params})
      else
        flash[:error] = "Failed to save user, try again."
        redirect_to new_user_path
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :upadted_at, :created_at)
  end
end
