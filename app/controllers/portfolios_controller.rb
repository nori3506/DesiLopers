class PortfoliosController < ApplicationController
  before_action :login_require, except: :index
  before_action :set_portfolio, only: [:edit, :show, :update, :destroy]
  before_action :same_user, only: [:edit, :update, :destroy]

  def index
    @portfolios = Portfolio.paginate(page: params[:page], per_page: 10)
  end

  def create
    @portfolio = Portfolio.new(portfolio_param)
    @portfolio.user = current_user
    if @portfolio.save
      flash[:success] = "New User Was Successfully Created, Welcome!"
      redirect_to users_path
    else
      flash[:danger] = "Failed!"
      render 'new'
    end

  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
  end

  def show
  end

  def update
    if @portfolio.update(portfolio_param)
      flash[:success] = "User data was updated successfully!"
      redirect_to @portfolio.user
    else
      render 'edit'
    end
  end

  def destroy
    if @portfolio.destroy
      flash[:success] = "User was deleted successfully"
      redirect_to users_path
    end
  end

private

  def portfolio_param
    params.require(:portfolio).permit(:career, :experience,:message,
                                :first_site, :first_image,:second_site,
                                :second_image,:third_site, :third_image)
  end

  def same_user
    if current_user != @portfolio.user
      flash[:danger] = "You cannot edit/delete other's portfolio"
      redirect_to root_path
    end
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end