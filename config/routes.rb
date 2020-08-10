Rails.application.routes.draw do
  resources :users
  root 'users#index'
  resources :sessions
  resources :opinions
  resources :followings, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
