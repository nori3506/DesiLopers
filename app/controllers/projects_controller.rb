class ProjectsController < ApplicationController
  def index
    @projects = Project.active_projects
  end

  def show
    @project = Project.find(params[:id])
    # todo: other projects list @other_projects shoud be defined
  end
  
end
