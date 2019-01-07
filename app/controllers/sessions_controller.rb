class SessionsController < ApplicationController
 
  def new
 
  end
 
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) 
      log_in user
      current_user
      flash[:success] = "Log In Successfully!"
      redirect_to users_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out successfully"
    redirect_to root_path
  
  end
  
private

  # def session_params
  #   require.params(:session).permit[:email,:password]
  # end
  
  
end