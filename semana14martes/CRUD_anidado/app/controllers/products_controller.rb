class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]
    @product.save
    redirect_to category_path(@product.category_id)
  end

  def destroy
    @product = Product.find(params[:id])
    @category = @product.category
    @product.delete
    redirect_to category_path(@category)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price)
    end

end
