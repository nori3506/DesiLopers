module Modules::Notification
	class << self
		def notice_user_company_has_interest(company_user, project, user)
			Notifications::User.create!(title: "#{company_user.company.name} is interested in you and recommends the job【 #{project.title} 】", source_id: user.id, user_id: company_user.id)
		end

		def notice_company_about_user_apply(user, project)
			Notifications::Company.create!(title: "#{user.name} Applied the job #{project.title}", source_id: project.company.id, user_id: user.id)
		end

		def notice_company_about_user_has_interest(user, project)
			Notifications::Company.create!(title: "#{user.name} has interest in the post #{ project.title }", source_id: project.company.id, user_id: user.id)
		end
	end
end