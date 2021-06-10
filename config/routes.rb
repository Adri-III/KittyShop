Rails.application.routes.draw do

  resources :join_table_items_orders
  resources :join_table_carts_items
  resources :orders
  resources :carts
  devise_for :users
  resources :users, only: [:show, :edit, :destroy]
  resources :items
  root to: 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
