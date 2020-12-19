module Modules::Message
	class << self
		def create_message(channel, company_id, content)
			channel.messages.create(company_id: company_id, content: content)
		end
	end
end