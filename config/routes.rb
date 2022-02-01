Rails.application.routes.draw do
  devise_for :users

  resources :cases, only: [:new, :create]
end
