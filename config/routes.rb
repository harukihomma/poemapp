Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :poems do
    resource :favorites, only: [:create, :destroy]
  end
end
