class Companies::HomeController < ApplicationController
	layout 'company/layout'
	before_action :authorize_home

	def index
	end

	private

  def authorize_home
    authorize [:companies, :home]
  end
end
