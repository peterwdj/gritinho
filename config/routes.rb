Rails.application.routes.draw do
  get 'restaurant/new'

  resources :reviews
  resources :restaurants

  get '/homepage' => 'homepage#index'
  get '/restaurant/new' => 'restaurant#new'

  post '/restaurant/new' => 'restaurant#create'

  root 'homepage#index'
end
