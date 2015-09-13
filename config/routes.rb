Rails.application.routes.draw do
  # root to: 'visitors#index'
  root 'home#index'
  get 'test', to: 'welcome#index'
  devise_for :users
  resources :users
  resources :article
end
