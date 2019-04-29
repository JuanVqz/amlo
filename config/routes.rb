Rails.application.routes.draw do
  resources :noticias
  resources :sitios

  root 'noticias#index'
end
