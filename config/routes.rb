Rails.application.routes.draw do
  get 'restaurant/new'

  resources :reviews
  resources :restaurants

  get '/homepage' => 'homepage#index'

  root 'homepage#index'
end
