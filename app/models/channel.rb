# == Schema Information
#
# Table name: channels
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Channel < ApplicationRecord
	has_many :channel_users
	has_many :users, through: :channel_users
end
