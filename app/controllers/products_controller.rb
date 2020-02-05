class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    #implicitly renders index (render :index)
  end

  def show
    @product = Product.find params[:id]
  end

end
