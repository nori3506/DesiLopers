# == Schema Information
#
# Table name: users
#
#  id                :bigint           not null, primary key
#  admin             :boolean          default(FALSE), not null
#  age               :string(255)
#  area              :string(255)
#  birthday(誕生日)  :date
#  career_year       :string(255)
#  email             :string(255)
#  gender            :string(255)
#  hobby             :string(255)
#  image             :string(255)
#  job_hunting       :boolean
#  name              :string(255)
#  password_digest   :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class User < ApplicationRecord
  before_save {self.email = email.downcase}
  default_scope -> { order(created_at: :desc) }
  validates :password, presence:true, length:{minimum: 6}, allow_nil: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:{maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  validates :name, presence: true, length: {maximum: 40}
  validate :validate_birthday
  validates :gender, presence: true
  mount_uploader :image, ImageUploader
  has_secure_password
  has_one :portfolio,:dependent => :delete
  has_many :tech_users
  has_many :techs, through: :tech_users
  has_many :comments, dependent: :destroy

  scope :techs_and_portfolio, -> {
    includes(:portfolio, :teches)
  }

  def validate_birthday
    if birthday == ""
      flash[:danger] = "kuso"
    end
  end
end
