class Companies::CompaniesController < Companies::ApplicationController
	layout 'company/regist'

	def new
		@form = Companies::CompanyRegistForm.new(Company.new)
	end

	def create
		params[:company][:foundation_date] = fondation_date_join
		@form = Companies::CompanyRegistForm.new(Company.new, params)
		if @form.save
			flash[:success] = "Company was successfully created"
			redirect_to root_path
		else
			flash[:error] = "Something went wrong"
			render 'new'
		end
	end

	private
	def fondation_date_join
		date = params[:foundation_date]
    Date.new date["foundation_date(1i)"].to_i, date["foundation_date(2i)"].to_i, date["foundation_date(3i)"].to_i
  end
end