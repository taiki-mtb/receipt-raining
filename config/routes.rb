Rails.application.routes.draw do
  resources :product_categories
  resources :products
  resources :receipts
  resources :customers
  resources :staffs
  resources :stores
  root to: redirect("/staffs")

end
