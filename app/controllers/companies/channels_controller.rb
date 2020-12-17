class Companies::ChannelsController < Companies::ApplicationController
  before_action :find_channel, only: [:show]

  def index
    @users = Channel.all
  end

  def show
  end



  private

    def find_channel
      @channel = Channel.find(params[:id])
    end

end
