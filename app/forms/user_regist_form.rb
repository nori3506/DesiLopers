class UserRegistForm < ApplicationForm
	attr_accessor(
		:name,
		:email,
		:password,
		:password_confirmation,
		:image,
		:career_year,
		:age,
		:gender,
		:area,
		:job_hunting,
		:hobby,
		:tech_ids
	)

	attr_reader(:user)

	def sanitize_params params
		params.permit(
			:name,
			:email,
			:password,
			:password_confirmation,
			:image,
			:career_year,
			:age,
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
			@user.age = age
			@user.gender = gender
			@user.area = area
			@user.job_hunting = job_hunting
			@user.hobby = hobby
			@user.tech_ids = tech_ids

		if valid?
			@user.transaction do
				@user.save
			end
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
		self.gender ||= @user.gender
		self.hobby ||= @user.hobby
		self.job_hunting ||= @user.job_hunting
		self.area ||= @user.area
		self.tech_ids ||= @user.tech_ids
	end
end