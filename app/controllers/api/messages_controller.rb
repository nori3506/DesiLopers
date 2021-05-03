class Api::MessagesController < ApplicationController
  def create
    # userかcompanyかの判別をする
    channel = Channel.find(params[:channel_id])
    if current_user.company_user?
      if Modules::Message::create_message_from_company(channel, params[:company_id], params[:content])
        flash[:success] = "Your message was successfully sent"
        if current_user.company_user?
          redirect_to companies_channel_path(channel)
        else
          redirect_to channel_path(channel)
        end
      else
        flash[:alert] = "Sorry, Message could not be sent"
        render "companies/channels/show"
      end
    else
      if Modules::Message::create_message_from_user(channel, params[:user_id], params[:content])
        flash[:success] = "Your message was successfully sent"
        if current_user.company_user?
          redirect_to companies_channel_path(channel)
        else
          redirect_to channel_path(channel)
        end
      else
        flash[:alert] = "Sorry, Message could not be sent"
        render "companies/channels/show"
      end
    end
    
  end

  private

  def message_params
    params.permit(:content, :company_id, :user_id, :channel)
  end
end