class UserProjectsController < ApplicationController
  def index
    # @projects = current_user.interesting_projects.includes(:company, [main_image: :image]).interested_by_user
  end

  def create
    project = Project.find(params[:project_id])
    current_user.applied_projects << project
    respond_to do |format|
      format.html { redirect_to project_path(project), notice: 'Applied Successfully' }
      format.json
    end
  end
end
