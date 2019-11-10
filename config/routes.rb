Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :samples
  root 'users#index'
  get 'users/trial', to: 'users#create_trial_user'

  resources :users
  resource :comments, only:[:create, :edit, :update, :destroy]
  resource :sessions, only: [:new, :create, :destroy]
  resources :portfolios
  resources :teches

end
