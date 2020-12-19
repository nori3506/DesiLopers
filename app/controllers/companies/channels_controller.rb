class Companies::ChannelsController < Companies::ApplicationController
  before_action :find_channel, only: [:show]

  def index
    channels = current_user.company.channels
    @messages = channels.order(updated_at: :desc).map(&:messages).map(&:last)
    # @users = @messages.map(&:channel).map(&:users)
  end

  def create
    Channel.transaction do
      @channel = Channel.create
		  @channel.channel_users.create(user_id: message_params[:user_id], company_id: current_user.company.id)
      Modules::Message.create_message(@channel, current_user.company.id, message_params[:content])
      flash[:success] = "Your message was successfully sent"
      redirect_to companies_channel_path(@channel)
    rescue => e
      flash[:alert] = "Sorry, Message could not be sent"
      @user = User.find(message_params[:user_id])
      render "companies/users/show"
    end
  end

  def show
    @messages = @channel.messages
    @user = @channel.users.first
  end

  private

    def find_channel
      @channel = Channel.find(params[:id])
    end

    def message_params
      params.permit(:content, :company_id, :user_id)
    end

end
