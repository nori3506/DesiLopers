class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :portfolio
  validates :user, presence:true, length: {minimum: 3}
  
end
