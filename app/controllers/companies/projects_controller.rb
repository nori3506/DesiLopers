class Companies::ProjectsController < Companies::ApplicationController
  before_action :authorize_home
  before_action :set_project, only: [:edit, :update, :destroy, :show]

  def index
    @projects = Project.my_projects(current_user.company)
  end

  def new
    @form = Companies::ProjectRegistForm.new(Project.new)
  end

  def create
    @form = Companies::ProjectRegistForm.new(Project.new, params)
    if @form.save
      @form.project.images.create(file_name: params[:project][:file_name])
      return redirect_to companies_home_index_path
    end
    render :new
  end

  def edit
    @form = Companies::ProjectRegistForm.new(@project)
  end

  def update
    @form = Companies::ProjectRegistForm.new(@project, params)
    if @form.save
      @form.project.images.update(file_name: params[:project][:file_name])	
      return redirect_to companies_project_path(@project)
    end
    render :edit
  end

  def show
  end

  def destroy

  end

  private

  def authorize_home
    authorize [:companies, :project]
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
