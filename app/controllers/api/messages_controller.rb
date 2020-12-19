class Api::MessagesController < ApplicationController
  def create
    channel = Channel.find(params[:channel_id])
    if Modules::Message::create_message(channel, params[:company_id], params[:content])
      flash[:success] = "Your message was successfully sent"
      redirect_to companies_channel_path(channel)
    else
      flash[:alert] = "Sorry, Message could not be sent"
      render "companies/channels/show"
    end
  end

  private

  def message_params
    params.permit(:content, :company_id, :user_id, :channel)
  end
end