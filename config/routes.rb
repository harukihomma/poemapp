Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :poems
  root to: "home#index"
end
