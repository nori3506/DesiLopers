class Companies::CompanyRegistForm < ::Companies::ApplicationForm
  attr_accessor :name,
                :file_name,
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

  def initialize(company, params = nil, current_user)
    @company = company
    @user = current_user
    set_defaults
    params ? super(sanitize_params(params)) : super()
  end

  def save
    @company.name             = name
    @company.status           = status
    @company.slogan           = slogan
    @company.mission          = mission
    @company.mission_detail   = mission_detail
    @company.overview         = overview
    @company.url              = url
    @company.phone            = phone
    @company.zip              = zip
    @company.prefecture       = prefecture
    @company.address          = address
    @company.emp_number       = emp_number
    @company.avarage_age      = avarage_age
    @company.capital          = capital
    @company.foundation_date  = foundation_date

    begin
      ActiveRecord::Base.transaction(joinable: false, requires_new: true) do
        @company.save!
        @user.update!(company_id: @company.id)
      end
    rescue ActiveRecord::RecordInvalid, ActiveRecord::InvalidForeignKey, StandardError => e
      false
    end
  end

  # def save_image
  #   company_image = CompanyImage.find_or_initialize_by(company:@company, use_purpose: :main)
  #   binding.pry
    
  #   self.file_name.each do |fn|
  #     @company.company_images = fn
  #   end
  # end

  def set_defaults
    self.name             ||=	@company.name
    self.status           ||=	@company.status
    self.slogan           ||=	@company.slogan
    self.mission          ||=	@company.mission
    self.mission_detail   ||=	@company.mission_detail
    self.overview         ||= @company.overview
    self.url              ||= @company.url
    self.phone            ||= @company.phone
    self.zip              ||= @company.zip
    self.prefecture       ||= @company.prefecture
    self.address          ||=	@company.address
    self.emp_number       ||= @company.emp_number
    self.avarage_age      ||=	@company.avarage_age
    self.capital          ||=	@company.capital
    self.foundation_date  ||= @company.foundation_date
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
                                    :foundation_date,
                                    file_name: []
    )
  end
end