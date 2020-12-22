class UserDecorator < Draper::Decorator
  delegate_all

	def interest_user?
    helpers.current_user&.company.projects.includes([:company_interests_users]).map(&:company_interests_users).flatten.map(&:user).include?(object)
  end

  # def applied_project?
  #   helpers.current_user&.applied_projects&.include?(object)
  # end
end
