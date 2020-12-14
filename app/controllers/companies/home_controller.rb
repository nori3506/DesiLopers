class Companies::HomeController < Companies::ApplicationController
  before_action :authorize_home

  def index
    @projects = Project.my_projects(current_user.company)
    @active_projects = Project.my_projects(current_user.company).active_projects
    @active_projects_number = Project.my_projects(current_user.company).active_projects.size
    @doen_projects = Project.my_projects(current_user.company).done_projects
    @doen_projects_number = Project.my_projects(current_user.company).done_projects.size
    @stop_projects = Project.my_projects(current_user.company).stop_projects
    @stop_projects_number = Project.my_projects(current_user.company).stop_projects.size
    @company = current_user.company
    @notifications = Notifications::Company.my_notifications(current_user.company)
    
  end

  private

  def authorize_home
    authorize [:companies, :home]
  end
end
