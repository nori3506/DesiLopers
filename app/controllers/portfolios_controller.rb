class PortfoliosController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_portfolio, only: [:edit, :show, :update, :destroy]
  before_action :same_user, only: [:edit, :update, :destroy]

  def create
    @portfolio = Portfolio.new(portfolio_param)
    @portfolio.user = current_user
    authorize @portfolio
    if @portfolio.save
      flash[:success] = "New User Was Successfully Created, Welcome!"
      redirect_to projects_path
    else
      flash[:danger] = "Failed!"
      render 'new'
    end
  end

  def new
    @portfolio = Portfolio.new
    authorize @portfolio
  end

  def edit
    authorize @portfolio
  end

  def show 
    authorize @portfolio
  end

  def update
    authorize @portfolio
    if @portfolio.update(portfolio_param)
      flash[:success] = "User data was updated successfully!"
      redirect_to @portfolio.user
    else
      render 'edit'
    end
  end

  def destroy
    authorize @portfolio
    if @portfolio.destroy
      flash[:success] = "User was deleted successfully"
      redirect_to user_path(current_user)
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