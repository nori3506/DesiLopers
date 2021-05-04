class Api::MessagesController < ApplicationController
  def create
    channel = Channel.find(params[:channel_id])    
    if current_user.company_user?
      if @message = Modules::Message::create_message_from_company(channel, params[:company_id], params[:content])
        respond_to do |format|
          format.html { redirect_to :channels, notice: 'Message was successfully sent' }
          format.json
        end
        flash[:success] = "Your message was successfully sent"
      else
        flash[:alert] = "Sorry, Message could not be sent"
      end
    else      
      if @message = Modules::Message::create_message_from_user(channel, params[:user_id], params[:content])
        respond_to do |format|
          format.html { redirect_to :channels, notice: 'Message was successfully sent' }
          format.json
        end
        flash[:success] = "Your message was successfully sent"        
      else
        flash[:alert] = "Sorry, Message could not be sent"
      end
    end
    
  end

  private

  def message_params
    params.permit(:content, :company_id, :user_id, :channel)
  end
end