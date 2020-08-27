class Companies::CompaniesController < Companies::ApplicationController
	layout 'company/regist'

	def new
		@company = Company.new
		@form = Companies::CompanyRegistForm.new(	@company, current_user, 	@company.images.build)
	end

	def create
		params[:company][:foundation_date] = fondation_date_join
		@company = Company.new
		@form = Companies::CompanyRegistForm.new(@company, params, current_user, @company.images)
		if @form.save
			@company.images.create(file_name: params[:company][:file_name])
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