# == Schema Information
#
# Table name: comments
#
#  id           :bigint           not null, primary key
#  content      :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  portfolio_id :bigint
#  user_id      :integer
#
# Indexes
#
#  index_comments_on_portfolio_id  (portfolio_id)
#
# Foreign Keys
#
#  fk_rails_...  (portfolio_id => portfolios.id)
#

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :portfolio
  validates :user, presence:true, length: { minimum: 3 }
  
end
