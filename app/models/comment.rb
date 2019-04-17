class Comment < ApplicationRecord
  belongs_to :user
  validates :user, presence:true, length: {minimum: 3}
  
end
