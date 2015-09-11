Rails.application.routes.draw do
  root to: 'visitors#index'
  get 'test', to: 'welcome#index'
  devise_for :users
  resources :users
  resources :article
end
