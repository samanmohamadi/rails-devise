Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :recipes, only: [:index]

  # root to: 'visitors#index'
  root 'home#index'
  get 'test', to: 'welcome#index'
  devise_for :users
  resources :users
  resources :article
  resources :journals , only: [:index]
end
