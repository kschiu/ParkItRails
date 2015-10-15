Rails.application.routes.draw do
  resources :users

  resources :locations

  resources :cars

  resources :reviews

  resources :purchases

  resources :listings

  resources :payments

  # semi-static routes
  get 'home', to: 'home#index', as: :home
  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # set the root url
  root to: 'home#index'
end
