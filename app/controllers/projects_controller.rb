class ProjectsController < ApplicationController
  def index
    @projects = Project.includes([company: [main_image: :image]], [main_image: :image]).active_projects
    @carousel_projects = @projects.limit(5)
    authorize @projects
  end

  def show
    @project = Project.find(params[:id]).decorate
    authorize @project
    @other_projects = Project.includes(:company).where('companies.id': @project.company.id).active_projects - [@project]
  end
end
