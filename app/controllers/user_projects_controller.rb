class UserProjectsController < ApplicationController
  def index
    # @projects = current_user.interesting_projects.includes(:company, [main_image: :image]).interested_by_user
  end

  def create
    project = Project.find(params[:project_id])
    UserProject.transaction do
      current_user.applied_projects << project
      Modules::Notification.notice_company_about_user_apply(current_user, project)
    end
    respond_to do |format|
      format.html { redirect_to project_path(project), notice: 'Applied Successfully' }
      format.json
    end
  end
end
