class PagesController < ApplicationController
  before_action :authenticate_user!


  def dashboard
    authorize! :dashboard, @post, current_user.admin?
    @users = User.all
  end
end
