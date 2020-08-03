class Companies::ApplicationController < ActionController::Base
	layout 'company/layout'
	include Pundit
end
