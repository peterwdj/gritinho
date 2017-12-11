Rails.application.routes.draw do
  resources :reviews
  resources :restaurants

  get '/homepage' => 'homepage#index'
end
