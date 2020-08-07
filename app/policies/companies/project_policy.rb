class Companies::ProjectPolicy < Companies::ApplicationPolicy
	def new?
		user&.company_user?
	end

	def show?
		user&.company_user?
	end

	def create?
		user&.company_user?
	end

	def update?
		user&.company_user?
	end

	def edit?
		user&.company_user?
	end
end