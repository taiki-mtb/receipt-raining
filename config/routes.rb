Rails.application.routes.draw do
  resources :product_categories
  resources :products
  resources :receipts
  resources :customers
  resources :staffs
  resources :stores
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
