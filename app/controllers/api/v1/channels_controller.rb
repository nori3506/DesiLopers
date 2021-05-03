module Api::V1
	class ChannelsController < ApplicationController
		def index
			@projects = Project.all.includes([[company: [main_image: :image]], [main_image: :image]]).active_projects
			render json: @projects, root: "projects", adapter: :json, each_serializer: ProjectSerializer
		end

		def show
			channel = Channel.find(params[:id])
			@messages = Message.where(channel_id: channel.id)
      render :show, formats: :json, handlers: :jbuilder, status: :ok
		end
	end
end