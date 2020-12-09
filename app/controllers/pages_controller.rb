class PagesController < ApplicationController
  before_action :redirect_to_projects
  def home
    @projects = Project.all.includes([[company: [main_image: :image]], [main_image: :image]])
  end

  private

  def redirect_to_projects
    redirect_to projects_path if user_signed_in?
  end
end