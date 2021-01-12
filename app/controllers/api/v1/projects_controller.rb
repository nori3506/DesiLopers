module Api::V1
	class ProjectsController < ApplicationController
		def index
			@projects = Project.all.includes([[company: [main_image: :image]], [main_image: :image]]).active_projects
			render json: @projects, root: "projects", adapter: :json, each_serializer: ProjectSerializer
		end
	end
end