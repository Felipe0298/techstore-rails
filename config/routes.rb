Rails.application.routes.draw do
  # Define your resources routes for products
  resources :products, only: [:index, :show]

  # Defines the root path route ("/")
  root "products#index"
end
