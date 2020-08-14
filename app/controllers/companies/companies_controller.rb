class Companies::CompaniesController < Companies::ApplicationController
	layout 'company/regist'

	def new
		@form = Companies::CompanyRegistForm.new(Company.new)
	end

	def create
		@form = Companies::CompanyRegistForm.new(Company.new, params)
		if @form.save
			flash[:success] = "Company was successfully created"
			redirect_to root_path
		else
			flash[:error] = "Something went wrong"
			render 'new'
		end
	end
		
end