Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'
  
  resources :users
  resources  :comments
  
  resource :sessions, only: [:new, :create, :destroy]
  resources :portfolios
  resources :teches
  
end
