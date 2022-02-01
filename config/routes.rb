Rails.application.routes.draw do
  devise_for :users

  resources :cases, only: [:index, :new, :create]
end
