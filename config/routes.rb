# == Route Map
#
#                                Prefix Verb       URI Pattern                                                                              Controller#Action
#                new_admin_user_session GET        /admin/login(.:format)                                                                   active_admin/devise/sessions#new
#                    admin_user_session POST       /admin/login(.:format)                                                                   active_admin/devise/sessions#create
#            destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                                                  active_admin/devise/sessions#destroy
#               new_admin_user_password GET        /admin/password/new(.:format)                                                            active_admin/devise/passwords#new
#              edit_admin_user_password GET        /admin/password/edit(.:format)                                                           active_admin/devise/passwords#edit
#                   admin_user_password PATCH      /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       PUT        /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       POST       /admin/password(.:format)                                                                active_admin/devise/passwords#create
#                            admin_root GET        /admin(.:format)                                                                         admin/dashboard#index
#                       admin_dashboard GET        /admin/dashboard(.:format)                                                               admin/dashboard#index
#        batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                                                admin/admin_users#batch_action
#                     admin_admin_users GET        /admin/admin_users(.:format)                                                             admin/admin_users#index
#                                       POST       /admin/admin_users(.:format)                                                             admin/admin_users#create
#                  new_admin_admin_user GET        /admin/admin_users/new(.:format)                                                         admin/admin_users#new
#                 edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                                    admin/admin_users#edit
#                      admin_admin_user GET        /admin/admin_users/:id(.:format)                                                         admin/admin_users#show
#                                       PATCH      /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       PUT        /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       DELETE     /admin/admin_users/:id(.:format)                                                         admin/admin_users#destroy
#              batch_action_admin_users POST       /admin/users/batch_action(.:format)                                                      admin/users#batch_action
#                           admin_users GET        /admin/users(.:format)                                                                   admin/users#index
#                                       POST       /admin/users(.:format)                                                                   admin/users#create
#                        new_admin_user GET        /admin/users/new(.:format)                                                               admin/users#new
#                       edit_admin_user GET        /admin/users/:id/edit(.:format)                                                          admin/users#edit
#                            admin_user GET        /admin/users/:id(.:format)                                                               admin/users#show
#                                       PATCH      /admin/users/:id(.:format)                                                               admin/users#update
#                                       PUT        /admin/users/:id(.:format)                                                               admin/users#update
#                                       DELETE     /admin/users/:id(.:format)                                                               admin/users#destroy
#                        admin_comments GET        /admin/comments(.:format)                                                                admin/comments#index
#                                       POST       /admin/comments(.:format)                                                                admin/comments#create
#                         admin_comment GET        /admin/comments/:id(.:format)                                                            admin/comments#show
#                                       DELETE     /admin/comments/:id(.:format)                                                            admin/comments#destroy
#                      new_user_session GET        /login(.:format)                                                                         users/sessions#new
#                          user_session POST       /login(.:format)                                                                         users/sessions#create
#                  destroy_user_session DELETE     /logout(.:format)                                                                        users/sessions#destroy
#                     new_user_password GET        /password/new(.:format)                                                                  devise/passwords#new
#                    edit_user_password GET        /password/edit(.:format)                                                                 devise/passwords#edit
#                         user_password PATCH      /password(.:format)                                                                      devise/passwords#update
#                                       PUT        /password(.:format)                                                                      devise/passwords#update
#                                       POST       /password(.:format)                                                                      devise/passwords#create
#              cancel_user_registration GET        /signup/cancel(.:format)                                                                 users/registrations#cancel
#                 new_user_registration GET        /signup(.:format)                                                                        users/registrations#new
#                edit_user_registration GET        /signup/edit(.:format)                                                                   users/registrations#edit
#                     user_registration PATCH      /signup(.:format)                                                                        users/registrations#update
#                                       PUT        /signup(.:format)                                                                        users/registrations#update
#                                       DELETE     /signup(.:format)                                                                        users/registrations#destroy
#                                       POST       /signup(.:format)                                                                        users/registrations#create
#                 new_user_confirmation GET        /confirmation/new(.:format)                                                              users/confirmations#new
#                     user_confirmation GET        /confirmation(.:format)                                                                  users/confirmations#show
#                                       POST       /confirmation(.:format)                                                                  users/confirmations#create
#                     letter_opener_web            /letter_opener                                                                           LetterOpenerWeb::Engine
#                           all_samples GET        /samples/all(.:format)                                                                   samples#all
#                               samples GET        /samples(.:format)                                                                       samples#index
#                                       POST       /samples(.:format)                                                                       samples#create
#                                sample PATCH      /samples/:id(.:format)                                                                   samples#update
#                                       PUT        /samples/:id(.:format)                                                                   samples#update
#                                       DELETE     /samples/:id(.:format)                                                                   samples#destroy
#                                  root GET        /                                                                                        pages#home
#                           users_trial GET        /users/trial(.:format)                                                                   users#create_trial_user
#                                 users GET        /users(.:format)                                                                         users#index
#                             edit_user GET        /users/:id/edit(.:format)                                                                users#edit
#                                  user GET        /users/:id(.:format)                                                                     users#show
#                                       PATCH      /users/:id(.:format)                                                                     users#update
#                                       PUT        /users/:id(.:format)                                                                     users#update
#                                       DELETE     /users/:id(.:format)                                                                     users#destroy
#                         edit_comments GET        /comments/edit(.:format)                                                                 comments#edit
#                              comments PATCH      /comments(.:format)                                                                      comments#update
#                                       PUT        /comments(.:format)                                                                      comments#update
#                                       DELETE     /comments(.:format)                                                                      comments#destroy
#                                       POST       /comments(.:format)                                                                      comments#create
#                          new_sessions GET        /sessions/new(.:format)                                                                  sessions#new
#                              sessions DELETE     /sessions(.:format)                                                                      sessions#destroy
#                                       POST       /sessions(.:format)                                                                      sessions#create
#                            portfolios GET        /portfolios(.:format)                                                                    portfolios#index
#                                       POST       /portfolios(.:format)                                                                    portfolios#create
#                         new_portfolio GET        /portfolios/new(.:format)                                                                portfolios#new
#                        edit_portfolio GET        /portfolios/:id/edit(.:format)                                                           portfolios#edit
#                             portfolio GET        /portfolios/:id(.:format)                                                                portfolios#show
#                                       PATCH      /portfolios/:id(.:format)                                                                portfolios#update
#                                       PUT        /portfolios/:id(.:format)                                                                portfolios#update
#                                       DELETE     /portfolios/:id(.:format)                                                                portfolios#destroy
#                                teches GET        /teches(.:format)                                                                        teches#index
#                                       POST       /teches(.:format)                                                                        teches#create
#                              new_tech GET        /teches/new(.:format)                                                                    teches#new
#                             edit_tech GET        /teches/:id/edit(.:format)                                                               teches#edit
#                                  tech GET        /teches/:id(.:format)                                                                    teches#show
#                                       PATCH      /teches/:id(.:format)                                                                    teches#update
#                                       PUT        /teches/:id(.:format)                                                                    teches#update
#                                       DELETE     /teches/:id(.:format)                                                                    teches#destroy
#         rails_postmark_inbound_emails POST       /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST       /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST       /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET        /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST       /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST       /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET        /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST       /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH      /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE     /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST       /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET        /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET        /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET        /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT        /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST       /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#
# Routes for LetterOpenerWeb::Engine:
# clear_letters DELETE /clear(.:format)                 letter_opener_web/letters#clear
# delete_letter DELETE /:id(.:format)                   letter_opener_web/letters#destroy
#       letters GET    /                                letter_opener_web/letters#index
#        letter GET    /:id(/:style)(.:format)          letter_opener_web/letters#show
#               GET    /:id/attachments/:file(.:format) letter_opener_web/letters#attachment

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
	resources :samples, only: [:index, :create, :update, :destroy] do
    collection do
      get "/all", to: "samples#all"
    end
  end
  root 'pages#home'
  get 'users/trial', to: 'users#create_trial_user'

  resources :users, except:[:new, :create]
  resource :comments, only:[:create, :edit, :update, :destroy]
  resource :sessions, only: [:new, :create, :destroy]
  resources :portfolios
  resources :teches
end
