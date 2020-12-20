# == Schema Information
#
# Table name: projects
#
#  id                          :bigint           not null, primary key
#  allocation(配属部署)        :text(65535)
#  background(募集背景)        :text(65535)
#  benefit(仕事で得られるもの) :text(65535)
#  detail(業務内容)            :text(65535)
#  emp_type(雇用形態)          :string(255)
#  max_salary(上限想定年収)    :integer
#  min_salary(下限想定年収)    :integer
#  number_of_hire(採用人数)    :integer
#  place(勤務地)               :text(65535)
#  process(採用プロセス)       :text(65535)
#  requirement(応募資格)       :text(65535)
#  title(募集タイトル)         :string(255)
#  welfare(福利厚生)           :text(65535)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  company_id                  :bigint
#
# Indexes
#
#  index_projects_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#
class Project < ApplicationRecord
  extend Enumerize
  enumerize :status, in: [:active, :stop, :done], default: :stop
  has_many :project_images, dependent: :destroy, autosave: true
  has_many :images, through: :project_images do
    def filter(purpose)
      merge(ProjectImage.where(use_purpose: purpose))
    end
  end
  has_many :interests
  has_many :interest_users, through: :interests, :source => :user
  has_many :user_projects
  has_many :candidates, through: :user_projects, :source => :user
  has_one :main_image, ->{ main }, class_name: 'ProjectImage'
  # enumerize :emp_type, in: [:full_time, :part_time, :temporary, :contract, :intern, :outsourcing_contract, :volunteer, :service_contract]
  belongs_to :company
  validates :title, presence: true
  validates :background, presence: true
  validates :detail, presence: true
  validates :requirement, presence: true
  validates :place, presence: true
  validates_numericality_of :number_of_hire, message: "is not a number"

  scope :my_projects, ->(company){ where(company_id: company.id) }
  scope :active_projects, -> { where(:status => :active)}
  scope :done_projects, -> { where(:status => :done)}
  scope :stop_projects, -> { where(:status => :stop)}
  scope :interested_by_user, -> { where('interests.is_interest_by_user' => true) }
end
