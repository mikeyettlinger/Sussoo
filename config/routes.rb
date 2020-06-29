Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :merch_line_items
  resources :merches
  root to: 'store#index'

  # get '/pages/sky', to: 'pages#sky'



  resources :line_items
  resources :carts
  resources :songs
  # get 'store/index'
  devise_for :users

  resources :sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
