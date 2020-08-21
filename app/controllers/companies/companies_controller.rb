class Companies::CompaniesController < Companies::ApplicationController
	layout 'company/regist'

	def new
		@form = Companies::CompanyRegistForm.new(Company.new, current_user)
	end

	def create
		params[:company][:foundation_date] = fondation_date_join
		@form = Companies::CompanyRegistForm.new(Company.new, params, current_user)
		if @form.save
			flash[:success] = "Company was successfully created"
			redirect_to companies_home_index_path
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