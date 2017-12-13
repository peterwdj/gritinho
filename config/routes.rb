Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews
  end

  root 'homepage#index'
end
