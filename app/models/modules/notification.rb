module Modules::Notification
	class << self
		def notice_company_user_interest(user, project)
			Notifications::Company.create!(title: "#{user.name} is interested in the job #{project.title} ", source_id: project.company.id, user_id: user.id)
		end

		def notice_company_user_apply(user, project)
			Notifications::Company.create!(title: "#{user.name} Applied the job #{project.title}", source_id: project.company.id, user_id: user.id)
		end

		def notice_user_company_interest(user,project)
			Notifications::Company.create!(title: "#{company.name} has interest", source_id: project.company.id, user_id: user.id)
		end
	end
end