Rails.application.routes.draw do
  resources :reviews
  resources :restaurants

  get '/homepage' => 'homepage#index'

  root 'homepage#index'
end
