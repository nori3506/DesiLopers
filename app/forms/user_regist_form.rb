class UserRegistForm < ApplicationForm
	attr_accessor(
		:name,
		:email,
		:password,
		:password_confirmation,
		:image,
		:career_year,
		:age,
		:birthday,
		:gender,
		:area,
		:job_hunting,
		:hobby,
		:tech_ids
	)

	attr_reader(:user)

	validate :validate_unique_email
	validates :password, length: { minimum:8, maximum:32 }
  validates_presence_of %w(name email password password_confirmation gender)

	def sanitize_params params
		params.permit(
			:name,
			:email,
			:password,
			:password_confirmation,
			:image,
			:career_year,
			:age,
			:birthday,
			:gender,
			:area,
			:job_hunting,
			:hobby,
			tech_ids: []
		)
	end

	def initialize(user, params = nil)
		@user = user
		set_defaults
		params ? super(sanitize_params(params)) : super()
	end

	def save

		@user.name = name
		@user.email = email
		@user.password = password
		@user.password_confirmation = password_confirmation
		@user.image = image
		@user.career_year = career_year
		@user.age = (Date.today.strftime('%Y%m%d').to_i - Date.parse(birthday).strftime('%Y%m%d').to_i) / 10000
		@user.birthday = birthday
		@user.gender = gender
		@user.area = area
		@user.job_hunting = job_hunting
		@user.hobby = hobby
		@user.tech_ids = tech_ids

		if @user.valid?
				@user.save
		end

	end

	def set_defaults
		self.name ||= @user.name
		self.email ||= @user.email
		self.password ||= @user.password
		self.password_confirmation ||= @user.password_confirmation
		self.image ||= @user.image
		self.career_year ||= @user.career_year
		self.age ||= @user.age
		self.birthday ||= @user.birthday
		self.gender ||= @user.gender
		self.hobby ||= @user.hobby
		self.job_hunting ||= @user.job_hunting
		self.area ||= @user.area
		self.tech_ids ||= @user.tech_ids
	end

	def validate_unique_email
    if !errors.key?(:email) && User.where(email: email).where.not(id: @user.id).any?
      errors.add(:email, 'はすでに登録されています')
    end
  end
end