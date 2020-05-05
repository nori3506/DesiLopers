class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SessionsHelper

  def after_sign_in_path_for(resource)
    new_portfolio_path
  end
end
