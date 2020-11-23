class ProjectDecorator < Draper::Decorator
  delegate_all

  def interest_project?
    helpers.current_user&.projects&.interest_projects&.include?(object)
  end
end
