class Companies::InterestsController < Companies::ApplicationController

  # def index
  #   @projects = current_user.interesting_projects.includes(:company, [main_image: :image]).interested_by_user
  # end

	def create
		project = Project.find(params[:project_id])
    user = User.find(params[:user_id])
		Interest.transaction do
      project.interests.create(user_id: user.id, project_id: project.id, is_interest_by_user: false)
      Modules::Notification.notice_company_user_interest(current_user, project, user)
    end
    respond_to do |format|
      format.html { redirect_to companies_candidate_path(user), notice: 'Your interest was successfully sent!' }
      format.json
    end
  end
end
