Rails.application.routes.draw do
  resources :merch_line_items
  resources :merches
  root to: 'store#index'

  resources :line_items
  resources :carts
  resources :songs
  # get 'store/index'
  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
