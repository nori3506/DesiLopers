# == Schema Information
#
# Table name: channel_users
#
#  id                         :bigint           not null, primary key
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  channel_id                 :bigint
#  company_id(sender company) :bigint
#  user_id(sender user)       :bigint
#
# Indexes
#
#  index_channel_users_on_channel_id  (channel_id)
#  index_channel_users_on_company_id  (company_id)
#  index_channel_users_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (channel_id => channels.id)
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (user_id => users.id)
#
class ChannelUser < ApplicationRecord
	extend Enumerize
	enumerize :type, in: ["Channels::Company", "Channels::User"], default: "Channels::User"
	belongs_to :channel
end
