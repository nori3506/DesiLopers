class ProjectPolicy < ApplicationPolicy
	def index?
		return false if company_user?

		true
	end

	def company_user?
		user&.company_user?
	end
end