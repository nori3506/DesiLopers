class InterestsController < ApplicationController

  def create
    project = Project.find(params[:project_id])
    current_user.projects << project
    respond_to do |format|
      format.html { redirect_to project_path(project), notice: 'Your interest was successfully sent!' }
      format.json
    end
  end

end
