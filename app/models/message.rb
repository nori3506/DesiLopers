# == Schema Information
#
# Table name: messages
#
#  id                         :bigint           not null, primary key
#  content                    :text(65535)
#  is_read                    :boolean          default(FALSE)
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  channel_id                 :bigint
#  company_id(sender company) :bigint
#  user_id(sender user)       :bigint
#
# Indexes
#
#  index_messages_on_channel_id  (channel_id)
#  index_messages_on_company_id  (company_id)
#  index_messages_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (channel_id => channels.id)
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (user_id => users.id)
#
class Message < ApplicationRecord
	belongs_to :channel, touch: true
	belongs_to :user, class_name: "user", foreign_key: "user_id", optional: true
	belongs_to :company, class_name: "company", foreign_key: "company_id", optional: true
end
