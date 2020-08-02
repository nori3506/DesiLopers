class Companies::ProjectsController < Companies::ApplicationController
	before_action :set_project, only: [:create, :edit, :update, :destroy]

	def index
	end

	def new
	end
	
	def create

	end
	
	def edit

	end

	def update
		
	end
	
	def destroy

	end

	private

	def set_project
		@project = Project.find(params[:id])
	end

	def project_param
		params.require(:project).permit(:title)
	end

end
