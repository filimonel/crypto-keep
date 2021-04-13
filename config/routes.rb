Rails.application.routes.draw do
  devise_for :users
  resources :cryptos
  resource :portfolio
  
  root to: 'pages#home'
  
end
