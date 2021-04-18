Rails.application.routes.draw do
  devise_for :users
  
  resources :cryptos
  resources :portfolios, only: [:show, :index]
  
  root to: 'pages#home'
  
end
