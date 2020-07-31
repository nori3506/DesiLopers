class Companies::HomePolicy < Companies::ApplicationPolicy
	
	def index?	
		user.company_user?
	end

end