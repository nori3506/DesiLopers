class Dashboards::HomeController < ApplicationController
	layout 'dashboard'
	before_action :authorize_home

	def index
	end

	private

  def authorize_home
    authorize [:dashboards, :home]
  end
end
