module Modules::Message
	class << self
		def create_message(channel, company, content)
			channel.messages.create(company_id: company.id, content: content)
		end
	end
end