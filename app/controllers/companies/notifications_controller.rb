class Companies::NotificationsController < Companies::ApplicationController

	def index
		@notifications = Notification.all.order(created_at: :desc)
	end

end
