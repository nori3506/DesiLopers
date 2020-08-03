Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :users,
    path: '',
    path_names: {
      sign_up: '',
      sign_in: 'login',
      sign_out: 'logout',
      registration: "signup",
    },
    controllers: {
      registrations: 'users/registrations',
      confirmations: 'users/confirmations',
      sessions: 'users/sessions'
    }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

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

  resources :users, except:[:new, :create]
  resource :comments, only:[:create, :edit, :update, :destroy]
  resource :sessions, only: [:new, :create, :destroy]
  resources :portfolios
  resources :teches

  namespace :api do
    namespace :v1 do
      resources :lists
    end
  end

  namespace :companies do
    resources :home, only: [:index]
    resources :projects
  end
end
