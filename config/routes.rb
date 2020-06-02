Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'profiles#dashboard', as: :dashboard

  resources :startups, only: [ :index, :show ] do
    resources :favorites, only: :create
    resources :applications, only: [ :new, :create ]
  end

  resources :favorites, only: :destroy
  resources :applications, only: [ :show, :destroy ]
  resources :sectors, only: :index
  resources :profiles, only: [ :edit, :update ]
end
