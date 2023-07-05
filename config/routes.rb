Rails.application.routes.draw do
  get 'orders/new'
  get 'orders/create'
  # Define your resources routes for products
  resources :products, only: [:index, :show]

  # Define the routes for the shopping cart
  get 'cart', to: 'carts#show', as: 'cart'
  post 'cart/add_to_cart', to: 'carts#add_to_cart', as: 'add_to_cart'
  delete 'cart/remove_from_cart/:product_id', to: 'carts#remove_from_cart', as: 'remove_from_cart'

  post '/cart/buy', to: 'carts#buy', as: 'buy_cart'

  # Define the routes for orders
  resources :orders, only: [:new, :create]



  # Defines the root path route ("/")
  root "products#index"
end
