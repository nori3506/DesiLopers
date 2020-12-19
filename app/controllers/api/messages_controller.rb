class Api::MessagesController < ApplicationController
  def create
    Channel.transaction do
      @channel = Channel.create
      @channel.channel_users.create(user_id: message_params[:user_id])
      @channel.messages.create(company_id:message_params[:company_id], content: message_params[:content])
      flash[:success] = "Your message was successfully sent"
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