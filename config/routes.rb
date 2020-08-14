Rails.application.routes.draw do
  resources :users
  root 'users#index'
  resources :sessions, only: %i[new create destroy]
  resources :opinions, only: %i[create]
  resources :followings, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
