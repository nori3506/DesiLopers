class Companies::InvitationsController < Devise::InvitationsController
	before_action :configure_permitted_parameters, if: :devise_controller?
	layout 'layouts/company/layout.html.erb', only: :new

	def new
		super
	end
	
	def create
		super
		resource.update_columns(company_id: current_user.company.id)
	end

	def edit
		super
	end

protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name])
  end

	private
	def after_invite_path_for(inviter, invitee)
		new_user_invitation_path
	end

	def after_accept_path_for(resource)
		companies_home_index_path
	end

end