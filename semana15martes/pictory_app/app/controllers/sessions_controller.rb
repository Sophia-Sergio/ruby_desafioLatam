class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user.nil
      redirect_to session_new_path
      return
    end

    if @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect_to root_path
    end

  end
end
