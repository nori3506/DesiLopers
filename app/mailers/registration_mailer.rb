class RegistrationMailer < ApplicationMailer
	def confirm_email(user, company_user_refgist_flag)
    @user = user
		@token = user.confirmation_token
		@flag = company_user_refgist_flag
    email = user.email

    mail(to: email, subject: 'Action Required: Verify email linked to DesiLopers') if email.present?
	end
end