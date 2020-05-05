module DeviseWhitelist
	extend ActiveSupport::Concern
	included do
		before_action :configure_permitted_parameters, if: :devise_controller?
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday, :gender, :tech_ids, :image])
	end
end