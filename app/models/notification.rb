# == Schema Information
#
# Table name: notifications
#
#  id         :bigint           not null, primary key
#  is_read    :boolean          default(FALSE)
#  title      :string(255)
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  source_id  :integer
#
class Notification < ApplicationRecord
  extend Enumerize
  validates :type, presence: true
  enumerize :type, in: [
    "Notifications::Company",
    "Notifications::User"
  ]
end
