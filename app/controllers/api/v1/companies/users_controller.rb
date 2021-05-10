module Api::V1::Companies
  class UsersController < ApplicationController
		before_action :set_user_projects, only: :update

    # PATCH/PUT /lists/1
    def update
			if @user_projects.update_all(status: params[:status])
				flash[:alert] = "Status was successfully updated"
				render :update, formats: :json, handlers: :jbuilder, status: :ok
			else
        flash[:alert] = "Sorry, Status was not updated."
			end

			
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user_projects
        @user_projects = UserProject.where(user_id: params[:id], id: params[:user_projects].split(' '))
      end
  
      def status_params
        params.permit(:status, :id, user_projects: [])
      end
  end
end  