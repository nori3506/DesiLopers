class PagesController < ApplicationController
  before_action :redirect_to_projects
  def home
    @projects = Project.all
  end

  private

  def redirect_to_projects
    redirect_to projects_path if user_signed_in?
  end
end