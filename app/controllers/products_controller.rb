class ProductsController < ApplicationController
  
  def index
    @categories = Product.pluck(:category).uniq
    @select_category = params[:category]
    
    if @select_category.present?
      @products = Product.where(category: @select_category)
      @title = "Todos nuestros productos #{@select_category}"
    else
      @products = Product.all
      @title = "Todos nuestros productos"
    end
  end
  

  def show
    @product = Product.find(params[:id])
  end
end


