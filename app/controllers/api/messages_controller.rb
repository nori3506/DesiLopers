class Api::MessagesController < ApplicationController
  def create
    Channel.transaction do      
      @channel = Channel.create
      Channels::User.create(channel_id: @channel.id, source_id: message_params[:user_id])
      Channels::Company.create(channel_id: @channel.id, source_id: message_params[:company_id])
      Messages::Company.create(channel_id: @channel.id, source_id: message_params[:company_id], content: message_params[:content])
      flash[:success] = "Your message was successfully sent"
      # redirect link will be changed to message_show page
      redirect_to companies_channel_path(@channel)
    rescue => e
      flash[:alert] = "Sorry, Message could not be sent"
      @user = User.find(message_params[:user_id])
      render "companies/users/show"
    end
  end

  private

  def message_params
    params.permit(:content, :company_id, :user_id)
  end
end