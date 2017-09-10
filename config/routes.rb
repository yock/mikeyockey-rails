Rails.application.routes.draw do
  devise_for :users
  root to: 'latest#index'
  get 'archive', to: 'archive#index'
  resources :posts
end
