# json.messages do
# 	json.array! (@messages) do |message|
# 		json.content message.content
# 		json.company(message.company)
# 	end
# end

json.messages @messages

# json.array! @messages