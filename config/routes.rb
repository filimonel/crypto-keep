Rails.application.routes.draw do
  devise_for :users
  
  resources :cryptos
  resources :portfolios, only: [:show, :index]
  
  root to: 'pages#home'
  
  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
