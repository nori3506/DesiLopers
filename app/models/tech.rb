class Tech < ApplicationRecord
  validates :name, presence:true
  has_many :tech_users
  has_many :users, through: :tech_users
  
end
