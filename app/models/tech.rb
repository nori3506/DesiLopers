# == Schema Information
#
# Table name: teches
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teches_on_slug  (slug) UNIQUE
#

class Tech < ApplicationRecord
  extend FriendlyId
  validates :name, presence:true
  has_many :tech_users
  has_many :users, through: :tech_users

  friendly_id :name, use: :slugged
end
