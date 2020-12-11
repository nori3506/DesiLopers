class ProjectDecorator < Draper::Decorator
  delegate_all

  def interest_project?
    helpers.current_user&.interesting_projects&.interested_by_user&.include?(object)
  end

  def applied_project?
    helpers.current_user&.applied_projects&.include?(object)
  end
end
