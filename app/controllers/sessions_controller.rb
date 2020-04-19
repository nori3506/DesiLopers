class SessionsController < Devise::SessionsController
  include ActiveModel::Model
  def new
    @user = User.new(session_params)
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
  def session_params
    params.permit(:email,:password)
  end
end