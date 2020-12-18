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
FactoryBot.define do
  factory :message do
    
  end
end
