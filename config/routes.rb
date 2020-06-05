 Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'profiles#dashboard', as: :dashboard

  resources :startups, only: [ :index, :show ] do
    resources :applications, only: [ :new, :create ]
    resources :favorites, only: :create
  end


  resources :applications, only: [ :index, :show, :create, :update, :destroy ]
  resources :favorites, only: [ :index, :destroy ]
  resources :sectors, only: :index
  resources :profiles, only: [ :create, :edit, :update ]
end

