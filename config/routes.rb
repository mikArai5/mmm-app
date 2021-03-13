Rails.application.routes.draw do
  devise_for :users
  get 'expenses/index'
  root to: "expenses#index"
end
