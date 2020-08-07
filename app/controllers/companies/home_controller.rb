class Companies::HomeController < Companies::ApplicationController
	before_action :authorize_home

	def index
		@projects = Project.my_projects(current_user.company)
	end

	private

  def authorize_home
    authorize [:companies, :home]
  end
end
