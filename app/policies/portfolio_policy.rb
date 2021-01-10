class PortfolioPolicy < ApplicationPolicy
	def new?
    return false if company_user?

    true

	end

	def create?
    return false if company_user?

    true
  end

  def show?
    return false if company_user?

    true
	end

	def edit?
    return false if company_user?

    true

	end

	def update?
    return false if company_user?

    true
  end

	def delete?
    return false if company_user?

    true
	end

  def company_user?
    user&.company_user?
  end
end