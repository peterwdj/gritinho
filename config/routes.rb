Rails.application.routes.draw do
  get 'restaurant/new'

  resources :reviews
  resources :restaurants

  get '/homepage' => 'homepage#index'
  get '/restaurant/new' => 'restaurant#new'

  root 'homepage#index'
end
