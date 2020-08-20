class ApplicationMailer < ActionMailer::Base
  default from: 'desilopers@example.com'
	layout 'mailer'
	append_view_path Rails.root.join('app', 'views', 'mailers')
end
