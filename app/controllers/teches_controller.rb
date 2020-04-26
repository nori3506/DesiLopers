class TechesController < ApplicationController

  def index
    @techs = Tech.all
  end

  def new
    @tech=Tech.new
    @techs = Tech.all
  end

  def create
    @tech = Tech.create(tech_params)
    if @tech.save
      respond_to do |format|
        format.html { redirect_to :new_tech, notice: 'New skill was successfully created!' }
        format.json
      end
    else
      flash[:danger]="Something Wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
    @tech= Tech.find(params[:id])
    @users = @tech.users.paginate(page: params[:page], per_page:8)
  end

  def destroy
  end

private
  def tech_params
     params.require(:tech).permit(:name)
  end
end