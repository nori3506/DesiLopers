class Companies::HomeController < Companies::ApplicationController
	before_action :authorize_home

	def index
	end

	private

  def authorize_home
    authorize [:companies, :home]
  end
end
