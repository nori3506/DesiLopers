class Companies::ApplicationForm
	include Rails.application.routes.url_helpers
  include ActiveModel::Validations
  include ActiveModel::Model
  include ActiveModel::Attributes
  include Draper::Decoratable

end