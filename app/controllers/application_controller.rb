class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SessionsHelper
  include Pundit
  include Concerns::ApplicationController

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def after_sign_in_path_for(resource)
    if resource.class == AdminUser
      admin_root_path
    elsif resource.company_user?
      companies_home_index_path
    else
      projects_path
    end
  end
end
