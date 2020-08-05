class Companies::ProjectsController < Companies::ApplicationController
	before_action :authorize_home
	before_action :set_project, only: [:edit, :update, :destroy]

	def index
	end

	def new
		@form = Companies::ProjectRegistForm.new(Project.new)
	end
	
	def create
		@form = Companies::ProjectRegistForm.new(Project.new, params)
		if @form.save
			return redirect_to companies_home_index_path
		end

		render 'companies/projects/new'


	end
	
	def edit

	end

	def update
		
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

	def project_param
		params.require(:project).permit(:title)
	end

end
