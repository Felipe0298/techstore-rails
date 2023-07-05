class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      session[:cart] = [] # Vaciar el carrito después de crear la orden
      redirect_to products_path, notice: 'Compra exitosa. Gracias por tu compra.'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:full_name, :phone_number, :email)
  end
end
