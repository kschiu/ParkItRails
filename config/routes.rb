Rails.application.routes.draw do
  resources :locations

  resources :cars

  resources :reviews

  resources :purchases

  resources :listings

  resources :payments

  # semi-static routes
  get 'home', to: 'home#index', as: :home

  # set the root url
  root to: 'home#index'
end
