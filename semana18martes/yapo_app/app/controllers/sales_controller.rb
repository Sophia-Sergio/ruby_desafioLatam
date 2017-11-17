class SalesController < ApplicationController
  before_action :authenticate_user!

  def create
    @sale = Sale.create(:user_id => current_user.id, :product_id => params[:id])
    redirect_to user_products_path(current_user.id, params[:id])
  end


  def index
    @products = Product.where("id IN (?)", Sale.all.pluck(:product_id))
  end
end
