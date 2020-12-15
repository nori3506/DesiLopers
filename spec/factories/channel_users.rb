# == Schema Information
#
# Table name: channel_users
#
#  id         :bigint           not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  channel_id :bigint
#  source_id  :integer
#
# Indexes
#
#  index_channel_users_on_channel_id  (channel_id)
#
# Foreign Keys
#
#  fk_rails_...  (channel_id => channels.id)
#
FactoryBot.define do
  factory :channel_user do
    
  end
end
