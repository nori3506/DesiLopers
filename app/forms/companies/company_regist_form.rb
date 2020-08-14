class Companies::CompanyRegistForm < ::Companies::ApplicationForm
	attr_accessor :name,
								:status,
								:slogan,
								:mission,
								:mission_detail,
								:overview,
								:url,
								:phone,
								:zip,
								:prefecture,
								:address,
								:emp_number,
								:avarage_age,
								:capital,
								:foundation_date

	attr_reader :company

def initialize(company, params = nil)
		@company = company
    set_defaults
    params ? super(sanitize_params(params)) : super()
	end

	def save
		@company.name 					 = name
    @company.status 				 = status
    @company.slogan 				 = slogan
    @company.mission 				 = mission
    @company.mission_detail  = mission_detail
    @company.overview 			 = overview
    @company.url 						 = url
    @company.phone 					 = phone
    @company.zip 						 = zip
    @company.prefecture 		 = prefecture
    @company.address 				 = address
    @company.emp_number 		 = emp_number
    @company.avarage_age 		 = avarage_age
    @company.capital 				 = capital
    @company.foundation_date = foundation_date
    @company.save
		
	end

	def set_defaults
		self.name						 ||=	@company.name
		self.status 				 ||=	@company.status
		self.slogan 				 ||=	@company.slogan
		self.mission 				 ||=	@company.mission
		self.mission_detail	 ||=	@company.mission_detail
		self.overview 			 ||= 	@company.overview
		self.url 						 ||= 	@company.url
		self.phone 					 ||= 	@company.phone
		self.zip						 ||= 	@company.zip
		self.prefecture			 ||= 	@company.prefecture
		self.address				 ||=	@company.address
		self.emp_number 		 ||= 	@company.emp_number
		self.avarage_age 		 ||=	@company.avarage_age
		self.capital				 ||=	@company.capital
		self.foundation_date ||= 	@company.foundation_date
	end

	def sanitize_params(params)
		params.require(:company).permit(:name,
																		:status,
																		:slogan,
																		:mission,
																		:mission_detail,
																		:overview,
																		:url,
																		:phone,
																		:zip,
																		:prefecture,
																		:address,
																		:emp_number,
																		:avarage_age,
																		:capital,
																		:foundation_date
		)
	end
end