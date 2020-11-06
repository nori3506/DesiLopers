class ProjectPolicy < ApplicationPolicy
	def index?
		normal_user?
	end

	def normal_user?
		user.present? && !user.company_user?
	end
	
	
end