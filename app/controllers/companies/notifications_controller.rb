class Companies::NotificationsController < Companies::ApplicationController

	def index
		@notifications = Notification.all
	end

end
