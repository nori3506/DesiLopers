module Concerns::ApplicationController
  extend ActiveSupport::Concern

  def render_403
    render('errors/403', layout: false)
  end

  def render_company_home
    redirect_to('/companies/home')
  end

  def render_home
    redirect_to(root_path)
  end

  protected

  def user_not_authorized
    redirect_to new_user_session_path and return unless current_user
    if current_user.company_user?
      render_company_home and return
    else
      render_home and return
    end
  end
end