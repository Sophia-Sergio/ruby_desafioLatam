class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    cod = rand(1..1000)
    category = rand(1..5)
    detail = params[:sale][:detail]
    discount = params[:sale][:discount].to_i
    value = params[:sale][:value].to_i
    tax = (params[:sale][:tax].to_i == 1)? 19 : 0
    total = (value * (1 + (tax.to_f / 100)))  * (1 - discount.to_f/100)

    @sale = Sale.create(:cod => cod, 
                        :value => value, 
                        :detail => detail, 
                        :category => category, 
                        :discount => discount, 
                        :tax => tax, 
                        :total => total)

    if @sale.errors.present?
      render 'sales/new'
    else
      redirect_to sales_done_path
    end
  end

  def done
    @sale = Sale.last
  end

end
