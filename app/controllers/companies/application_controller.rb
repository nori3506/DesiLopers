class Companies::ApplicationController < ActionController::Base
  layout 'company/layout'
  include Pundit
  include Concerns::ApplicationController

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
end
