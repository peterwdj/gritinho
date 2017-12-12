Rails.application.routes.draw do

  resources :reviews
  resources :restaurants

  root 'homepage#index'
end
