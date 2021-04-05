Rails.application.routes.draw do
  devise_for :users
  get 'expenses/index'
  root to: "expenses#index"
  resources :wishlists
  resources :details, only: [:new, :create]
end
