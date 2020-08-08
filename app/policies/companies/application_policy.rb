class Companies::ApplicationPolicy
	attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    company_user?
  end

  def show?
    company_user?
  end

  def create?
    company_user?
  end

  def new?
    company_user?
  end

  def update?
    company_user?
  end

  def edit?
    company_user?
  end

  def destroy?
    company_user?
	end

	def	company_user?
		user&.company_user?
	end
	
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end