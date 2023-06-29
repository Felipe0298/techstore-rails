class CartsController < ApplicationController
  def show
    @cart_products = session[:cart] || []
    @cart_products = [] if @cart_products.nil?
  end

  def add_to_cart
    product_id = params[:product_id]
    session[:cart] ||= []
    session[:cart] << product_id
    redirect_to cart_path, notice: 'Producto agregado al carrito exitosamente.'
  end

  def remove_from_cart
    product_id = params[:product_id]
    session[:cart].delete(product_id) if session[:cart].present?
    redirect_to cart_path, notice: 'Producto eliminado del carrito exitosamente.'
  end
  
end
