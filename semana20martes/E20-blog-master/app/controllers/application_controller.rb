class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to root_url, alert: exception.message }
    end
  end

  def role_change
    @user = User.find(params[:id])
    if @user.admin?
      @user.visit!
    else
      @user.admin!
    end
    redirect_to pages_dashboard_path, notice: 'El usuario fue modificado'
  end


end
