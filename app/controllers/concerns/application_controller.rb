module Concerns::ApplicationController
  extend ActiveSupport::Concern

  def render_403
    render 'errors/403', layout: false
  end

  protected

  def user_not_authorized
    redirect_to new_user_session_path and return unless current_user

    render_403
  end	
  
end