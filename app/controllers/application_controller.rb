class ApplicationController < ActionController::Base
    before_action :set_cart_products_count
  
    private
  
    def set_cart_products_count
      @cart_products_count = session[:cart]&.length || 0
    end
end
  