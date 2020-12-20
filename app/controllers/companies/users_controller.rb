class Companies::UsersController < Companies::ApplicationController
  before_action :find_user, only: [:show]

  def show
    user_channel = Channel.includes(:channel_users).where('channel_users.user_id' => @user.id)
    company_channel = Channel.includes(:channel_users).where('channel_users.company_id' => current_user.company.id)
    @is_channel = (user_channel & company_channel).present?
    @channel = (user_channel & company_channel)&.first
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

end
