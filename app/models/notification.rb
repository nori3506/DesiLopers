# == Schema Information
#
# Table name: notifications
#
#  id              :bigint           not null, primary key
#  is_read         :boolean          default(FALSE)
#  title           :string(255)
#  type            :string(255)
#  user_id(Sender) :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  source_id       :integer
#
# Indexes
#
#  index_notifications_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Notification < ApplicationRecord
  extend Enumerize
  validates :type, presence: true
  enumerize :type, in: [
    "Notifications::Company",
    "Notifications::User"
  ]

  scope :my_notifications, ->(object){ where(source_id: object.id) }

end
