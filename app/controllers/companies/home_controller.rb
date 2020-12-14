class Companies::HomeController < Companies::ApplicationController
  before_action :authorize_home

  def index
    @projects = Project.includes([:user_projects]).my_projects(current_user.company)
    @active_projects = @projects.active_projects
    @active_projects_number = @projects.active_projects.size
    @doen_projects = @projects.done_projects
    @doen_projects_number = @projects.done_projects.size
    @stop_projects = @projects.stop_projects
    @stop_projects_number = @projects.stop_projects.size
    @company = current_user.company
    @notifications = Notifications::Company.my_notifications(current_user.company)
    @screening_users = User.screening_users(current_user.company)
    @screening_users_number = @screening_users.size
    @skill_check_users = User.skill_check_users(current_user.company)
    @skill_check_users_number = @skill_check_users.size
    @interview_users = User.interview_users(current_user.company)
    @interview_users_number = @interview_users.size
    @recruitement_offer_users = User.recruitement_offer_users(current_user.company)
    @recruitement_offer_users_number = @recruitement_offer_users.size
    @signed_users = User.signed_users(current_user.company)
    @signed_users_number = @signed_users.size
    @reject_users = User.rejected_users(current_user.company)
    @reject_users_number = @reject_users.size
    
  end

  private

  def authorize_home
    authorize [:companies, :home]
  end
end
