class ProjectsController < ApplicationController
  def index
    @projects = Project.includes([company: [main_image: :image]], [main_image: :image]).active_projects
    @carousel_projects = @projects.limit(5)
    authorize @projects
  end

  def show
    @project = Project.find(params[:id]).decorate
    authorize @project
    # todo: other projects list @other_projects shoud be defined
  end
end
