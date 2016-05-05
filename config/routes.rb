Rails.application.routes.draw do

  root 'home#index'

  resources :users, :only => [:new, :create]
  resources :products

  get '/products/category/:category' => 'products#show', as: 'product_category'

  resources :orders

  resources :orderitems

  # get 'orders/order_fulfillment' => 'orders#index', as: 'order_fulfillment'


  resources :sessions, :only => [:new, :create]
  get "/logout" => "sessions#destroy"


end