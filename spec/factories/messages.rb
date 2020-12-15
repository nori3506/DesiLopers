# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  is_read    :boolean          default(FALSE)
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  channel_id :bigint
#  source_id  :integer
#
# Indexes
#
#  index_messages_on_channel_id  (channel_id)
#
# Foreign Keys
#
#  fk_rails_...  (channel_id => channels.id)
#
FactoryBot.define do
  factory :message do
    
  end
end
