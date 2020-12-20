class Companies::HomeController < Companies::ApplicationController
  before_action :authorize_home

  def index
    company = current_user.company
    @projects = Project.includes([:user_projects]).my_projects(company)
    @active_projects = @projects.active_projects
    @active_projects_number = @projects.active_projects.size
    @doen_projects = @projects.done_projects
    @doen_projects_number = @projects.done_projects.size
    @stop_projects = @projects.stop_projects
    @stop_projects_number = @projects.stop_projects.size
    @notifications = Notifications::Company.my_notifications(company).order(created_at: :desc)
    @more_than_five_notifications = @notifications&.size > 5
    @screening_users = User.candidates_users(company, "screening")
    @screening_users_number = @screening_users.size
    @skill_check_users = User.candidates_users(company, "skill_check")
    @skill_check_users_number = @skill_check_users.size
    @interview_users = User.candidates_users(company, "interview")
    @interview_users_number = @interview_users.size
    @recruitment_offer_users =User.candidates_users(company, "recruitment_offer")
    @recruitment_offer_users_number = @recruitment_offer_users.size
    @signed_users = User.candidates_users(company, "signed")
    @signed_users_number = @signed_users.size
    @reject_users = User.candidates_users(company, "reject")
    @reject_users_number = @reject_users.size
  end
  private

  def authorize_home
    authorize [:companies, :home]
  end
end
