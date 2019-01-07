class PagesController < ApplicationController

  def home
    redirect_to users_path if loggedin?
  end

end