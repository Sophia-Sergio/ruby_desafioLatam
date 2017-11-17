class AdminsController < ApplicationController
  def index
    @users = User.all 
  end

  def edit
    @user = User.find(params[:id])
    @user.admin = @user.admin ? false : true
    @user.save
    
    redirect_to admins_path
  end
end
