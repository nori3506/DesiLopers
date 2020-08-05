class Companies::ProjectPolicy < Companies::ApplicationPolicy
	def new?
		user&.company_user?
	end

end