 Rails.application.routes.draw do
  devise_for :users

  root to: 'songs#index'

  resources :songs
  resources :song_shopping_carts
  resources :shopping_carts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
