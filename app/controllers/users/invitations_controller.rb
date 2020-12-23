class Users::InvitationsController < Devise::InvitationsController
	before_action :configure_permitted_parameters, if: :devise_controller?

	def new
    super
  end
	

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name])
  end

	private
	def after_invite_path_for(inviter, invitee)
		new_user_invitation_path
	end

end