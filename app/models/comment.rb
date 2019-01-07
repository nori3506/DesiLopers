class Comment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :user, presence:true
end
