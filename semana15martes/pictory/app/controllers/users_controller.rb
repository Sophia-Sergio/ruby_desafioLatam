class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if User.create(user_params)
      session[:user_id] = User.last.id
      redirect_to root_path
    else
      redirect_to users_sign_up_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
