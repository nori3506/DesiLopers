# == Schema Information
#
# Table name: teches
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tech < ApplicationRecord
  validates :name, presence:true
  has_many :tech_users
  has_many :users, through: :tech_users
  
end
