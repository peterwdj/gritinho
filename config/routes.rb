Rails.application.routes.draw do

  devise_for :users
  resources :reviews
  resources :restaurants

  root 'homepage#index'
end
