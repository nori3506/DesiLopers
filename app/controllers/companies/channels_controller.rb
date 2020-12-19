class Companies::ChannelsController < Companies::ApplicationController
  before_action :find_channel, only: [:show]

  def index
    channels = current_user.company.channels
    @messages = channels.order(updated_at: :desc).map(&:messages).map(&:last)
    # @users = @messages.map(&:channel).map(&:users)
  end

  def show
    @messages = @channel.messages
  end

  private

    def find_channel
      @channel = Channel.find(params[:id])
    end

end
