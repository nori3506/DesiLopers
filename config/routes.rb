# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users,
             path: '',
             path_names: {
               sign_up: '',
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               registrations: 'users/registrations',
               confirmations: 'users/confirmations',
               sessions: 'users/sessions'
             }

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :samples, only: [:index, :create, :update, :destroy] do
  #   collection do
  #     get "/all", to: "samples#all"
  #   end
  # end
  root 'pages#home'
  get 'users/trial', to: 'users#create_trial_user'

  resources :users, except: %i[new create index]
  scope module: :users do
    resources :companies, only: %i[show index], path: 'company_detail'
  end
  resource :comments, only: %i[create edit update destroy]
  resource :sessions, only: %i[new create destroy]
  resources :portfolios
  resources :teches
  resources :projects
  resources :interests, only: %i[create index]
  resources :user_projects, only: %i[create index]
  resources :channels, only: %i[show index]

  namespace :api do
    resources :messages, only:[:create]
    namespace :v1 do
      resources :lists
    end
  end

  namespace :companies do
    resources :home, only: [:index]
    resources :projects
    resources :companies
    resources :users, as: :candidates
    resources :channels
    resources :notifications, only: [:index]
    resources :interests, only: [:create]
  end
end
