# == Schema Information
#
# Table name: portfolios
#
#  id           :bigint           not null, primary key
#  career       :integer
#  experience   :text(65535)
#  first_image  :string(255)
#  first_site   :text(65535)
#  message      :text(65535)
#  second_image :string(255)
#  second_site  :text(65535)
#  third_image  :string(255)
#  third_site   :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint
#
# Indexes
#
#  index_portfolios_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :comments
  default_scope -> { order(created_at: :desc) }
  validates :first_site, presence:true, format: /\A#{ URI::regexp(%w(http https)) }\z/
  mount_uploader :first_image, ImageUploader
  validates :second_site, format: /\A#{URI::regexp(%w(http https))}\z/, if: :second_site?
  mount_uploader :second_image, ImageUploader
  validates :third_site, format: /\A#{ URI::regexp(%w(http https)) }\z/, if: :third_site?
  mount_uploader :third_image, ImageUploader
  validates :career, presence: true
  min_number = 5
  validates :experience, presence: true, length: { minimum: 5, too_short: "must be more than #{ min_number } letters" }
  validates :message, presence: true, length: { minimum: 5, too_short: "must be more than #{ min_number } letters"  }
end
