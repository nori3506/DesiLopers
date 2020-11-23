class UsersController < ApplicationController
  # before_action :loggedin?, except:[:index, :show]
  # before_action :authenticate_user!
  before_action :set_user, only: [:edit, :show, :update, :destroy]
  before_action :admin_check, only: [:delete]
  before_action :same_user, only: [:edit,:update,:delete]

  def index
    # filtered = fileter_users(User.includes([:portfolio, :techs]).all)
    # @users = filtered
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).includes([:portfolio, :techs, :tech_users])
    # render json: @users, each_serializer: UserSerializer
  end

  def edit

  end

  def show
    @comment = Comment.new

    @portfolio = @user.portfolio
  end

  def update
    if @user.update(user_params)
      sign_in(@user, :bypass => true)
      flash[:success] = "User data was updated successfully!"
      if @user.portfolio.nil?
        flash[:danger]="Please set your portfolio infomation in this page"
        redirect_to new_portfolio_path
      else
        redirect_to @user
      end
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
    @user.skip_confirmation!
    if @user.save
      sign_in @user
      trial_user_create_portfolio
      flash[:success] = "TRY this APP! Welcome!"
      redirect_to projects_path
    else
      flash[:danger] = "Please click 'TRIAL' again"
      render 'users_path'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :career_year, :age, :birthday, :gender, :hobby, :job_hunting, :area, tech_ids: [])
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
    random_number = rand(1..100000)
    @user = User.new(name: "TRIAL USER#{random_number}",email:"test#{random_number}@test.test", status: :active, password: "password", password_confirmation: "password", birthday: "1990-08-09", gender: "male" )
  end

  def trial_user_create_portfolio
    @user.portfolio = Portfolio.new(career: 1, experience: "I am just trying this app", message:"Hi, Nice to meet you!", first_site:"https://github.com/nori3506")
    @user.portfolio.save
  end

  def fileter_users(users)
    if params[:name] && params[:name] != ""
      name = params[:name]
      result_users = users.techs_and_portfolio.where('name LIKE(?) OR hobby LIKE(?) OR area LIKE(?)', "%#{ name }%", "%#{ name }%", "%#{ name }%")
      result_users += users.techs_and_portfolio.where('teches.name LIKE(?)', "%#{ name }%")
      return result_users
    end
    users
  end

  def filter_param
    params.require(:user).permit(:name)
  end

  def response_fields(user_json)
    user_parse = JSON.parse(user_json)
    # レスポンスから除外したいパラメータ
    response = user_parse.except('created_at', 'updated_at', 'deleted_at')
    # JSON を見やすく整形して返す
    JSON.pretty_generate(response)
  end
end
