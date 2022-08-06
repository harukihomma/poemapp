Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get 'home', to: 'home#index'
  get 'poem', to: 'poems#show'
  resources :poems do
    resource :favorites, only: [:create, :destroy]
  end
end
