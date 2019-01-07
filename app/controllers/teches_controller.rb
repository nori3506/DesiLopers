class TechesController < ApplicationController
  
  def index
    @techs = Tech.all
  end
  
  def create
    @tech = Tech.create(tech_params)
    if @tech.save
      redirect_to teches_path
    else
      flash[:danger]="Something Wrong"
      render 'new'
    end
  end
  
  def new
    @tech=Tech.new
  end
  
  def edit
  end
  
  def show
    @tech= Tech.find(params[:id])
    @users = @tech.users.paginate(page: params[:page], per_page:8)

  end
  
  def update
  end
  
  def destroy
  end

private
  def tech_params
     params.require(:tech).permit(:name)
  end


end