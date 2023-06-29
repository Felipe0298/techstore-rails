class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @categories = Product.pluck(:category).uniq
    @select_category = params[:category]
  
    if @select_category.present?
      @products = Product.where(category: @select_category)
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end


