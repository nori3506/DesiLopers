class Dashboards::HomePolicy < Dashboards::ApplicationPolicy
	
	def index?	
		user.company_user?
	end

end