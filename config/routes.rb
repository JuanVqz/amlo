Rails.application.routes.draw do
  resources :noticias
  resources :sitios

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root 'noticias#index'
end
