Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'user/omniauth_callbacks' }

  resources :restaurants do
    resources :reviews
  end

  root 'homepage#index'

end
