 Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  root to: 'pages#home'

  get 'dashboard', to: 'profiles#dashboard', as: :dashboard
  patch '/applications/:id/sent_application', to: 'applications#sent_application', as: :sent_application

  resources :startups, only: [ :index, :show ] do
    resources :applications, only: [ :new, :create ]
    resources :favorites, only: :create
  end


  resources :applications, only: [ :index, :show, :create, :edit, :update, :destroy ]
  resources :favorites, only: [ :index, :destroy ]
  resources :sectors, only: :index
  resources :profiles, only: [ :create, :edit, :update ]
end

