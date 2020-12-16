class Companies::UsersController < Companies::ApplicationController
	before_action :find_user, only: [:show]

	def show
		user_channel = Channels::User.includes(:channel).where(source_id: @user.id)&.map(&:channel)
		company_channel = Channels::Company.includes(:channel).where(source_id: current_user.company.id)&.map(&:channel)
		@is_channel = (user_channel & company_channel).present?

	end

	private

		def find_user
			@user = User.find(params[:id])
		end

end
