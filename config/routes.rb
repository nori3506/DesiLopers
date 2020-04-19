Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      registrations: 'users/registrations',
      confirmations: 'users/confirmations',
      sessions: 'users/sessions'
    }
    # devise_scope :user do 
    #   get "sessions", :to => "sessions#new"
    #   post "sessions", :to => "sessions#create"
    #   delete "sessions", :to => "devise/sessions#destroy"  
    # end

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

  resources :users
  resource :comments, only:[:create, :edit, :update, :destroy]
  resource :sessions, only: [:new, :create, :destroy]
  resources :portfolios
  resources :teches

end
