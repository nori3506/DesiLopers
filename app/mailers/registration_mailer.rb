class RegistrationMailer < ApplicationMailer
	def confirm_email(user, company_user_refgist_flag)
    @user = user
		@token = user.confirmation_token
		@flag = company_user_refgist_flag
    email = user.email

    mail(to: email, subject: 'メールアドレス確認のお知らせ') if email.present?
	end
end