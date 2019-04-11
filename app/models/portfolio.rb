class Portfolio < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :first_site,presence:true, format: /\A#{URI::regexp(%w(http https))}\z/
  mount_uploader :first_image, ImageUploader
  validates :second_site, format: /\A#{URI::regexp(%w(http https))}\z/, if: :second_site?
  mount_uploader :second_image, ImageUploader
  validates :third_site, format: /\A#{URI::regexp(%w(http https))}\z/, if: :third_site?
  mount_uploader :third_image, ImageUploader
  validates :career, presence: true
  validates :experience, presence: true, length: {minimum:5}
  validates :message, presence: true, length:{minimum:5}
end
