class ProjectsController < ApplicationController
  def index
    @projects = Project.includes([company: [main_image: :image]], [main_image: :image]).active_projects
    @carousel_projects = @projects.limit(5)
    authorize @projects
    render json: @projects, root: "projects", adapter: :json, each_serializer: ProjectSerializer
  end

  def show
    @project = Project.find(params[:id]).decorate
    # todo: other projects list @other_projects shoud be defined
  end
end
