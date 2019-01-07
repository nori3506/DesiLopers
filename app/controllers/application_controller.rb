class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
  
  def login_require
    if !loggedin?
      flash[:danger] = "Please Login before using this services"
      redirect_to new_sessions_path
    end
  end

  
end
