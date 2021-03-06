Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create, :destroy]
  post "/session/logout" => "sessions#destroy", as: :logout
  post "/session/new" => "sessions#new"
  resource :metadata, only: [:show]
  resource :dashboard, only: [:show]
  resources :registrations, only: [:new, :create]
  root to: "sessions#new"
end
