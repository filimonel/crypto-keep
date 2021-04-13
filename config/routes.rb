Rails.application.routes.draw do
  get 'portfolios/index'
  get 'portfolios/show'
  get 'portfolios/new'
  get 'portfolios/edit'
  get 'cryptos/index'
  get 'cryptos/show'
  get 'cryptos/new'
  get 'cryptos/edit'
  devise_for :users
  resources :cryptos
  resource :portfolio
  
  root to: 'pages#home'
  
end
