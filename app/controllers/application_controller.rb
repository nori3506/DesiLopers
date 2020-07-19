class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SessionsHelper

  def after_sign_in_path_for(resource)    
    if resource.class == AdminUser
      admin_root_path
    elsif resource.company_user?
      root_path
    else      
      new_portfolio_path
    end
  end
end
