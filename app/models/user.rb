class User < ApplicationRecord
  before_save {self.email = email.downcase}
  default_scope -> { order(created_at: :desc) }
  validates :password, presence:true, length:{minimum: 6}, allow_nil: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:{maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  validates :name, presence: true, length: {maximum: 40}
  mount_uploader :image, ImageUploader
  has_secure_password
  has_one :portfolio,:dependent => :delete
  has_many :tech_users
  has_many :techs, through: :tech_users
  has_many :comments, dependent: :destroy
  
end
