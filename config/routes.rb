# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search', to: 'search#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :users do
    resources :tools
  end
  resources :users do
    get 'show_tools'
  end
  resources :users do
    resources :image_url, only: %i[create destroy]
  end
  resources :tools do
    resources :loans
  end

  resources :loans
  resources :tools

  resources :users

  get 'about', to: 'static_pages#about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_pages#home'
end
