module Modules::Message
	class << self
		def create_message_from_company(channel, company_id, content)
			channel.messages.create(company_id: company_id, content: content)
		end

		def create_message_from_user(channel, user_id, content)
			channel.messages.create(user_id: user_id, content: content)
		end
	end
end