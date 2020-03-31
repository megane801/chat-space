Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update, :destroy]
  resources :groups, only: [:index, :new, :create, :edit, :update]
end
