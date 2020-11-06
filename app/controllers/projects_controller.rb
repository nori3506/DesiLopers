class ProjectsController < ApplicationController
  def index
    @projects = Project.includes([company: :main_image], :main_image).active_projects
    authorize @projects
  end

  def show
    @project = Project.find(params[:id]).decorate
    # todo: other projects list @other_projects shoud be defined
  end
end
