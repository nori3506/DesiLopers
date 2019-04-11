class UsersController < ApplicationController
  # before_action :loggedin?, except:[:index, :show]
  before_action :set_user, only: [:edit, :show, :update, :destroy]
  before_action :admin_check, only: [:delete]
  before_action :same_user, only: [:edit,:update,:delete]
  
  
  def index
    @users = User.paginate(page: params[:page], per_page: 20)
    # @user_portfolio =@user.portfolio
    # @user_portfolio = @users.portfolio.career
  end
  
  def create 
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "New User Was Successfully Created, Welcome!"
      redirect_to new_portfolio_path
    else
      flash[:danger] = "Failed!"
      render 'new'
    end
  end
  
  def new
    @user = User.new
  end

  def edit
  end
  
  def show
    if current_user && @current_user.portfolio.nil?
      redirect_to new_portfolio_path
    end
  end
  
  def update
    if @user.update(user_params)
      flash[:success] = "User data was updated successfully!"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    if @user.destroy
      flash[:success] = "User was deleted successfully"
      redirect_to users_path
    end
  end
  
  def create_trial_user
    trial_user_new
    if @user.save
      log_in(@user)
      flash[:success] = "TRY this APP!, Welcome!"
      redirect_to users_path
    else
      flash[:danger] = "Please click 'TRIAL' again"
      render 'users_path'
    end
  end
  
  
  
private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :career_year, :age, :gender, :hobby, :job_hunting, :area, tech_ids: [])
  end
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def same_user
    if current_user != @user
      flash[:danger] = "You cannot edit/delete other user data"
      redirect_to root_path
    end
  end
  
  def admin_check
    if !current_user.admin?
      flash[:danger] = "you are not permitted to delete someone's data"
      redirect_to root_path
    end
  end
  
  def trial_user_new
    @user = User.new(name:"TRIAL USER",email:"test#{rand(1..100000)}@test.test", password: "password", password_confirmation: "password")
  end
  

end