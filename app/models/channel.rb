# == Schema Information
#
# Table name: channels
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Channel < ApplicationRecord
  has_many :channel_users, dependent: :destroy
  has_many :messages, dependent: :destroy
end
