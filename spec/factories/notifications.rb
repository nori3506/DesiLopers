# == Schema Information
#
# Table name: notifications
#
#  id              :bigint           not null, primary key
#  is_read         :boolean          default(FALSE)
#  title           :string(255)
#  type            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  source_id       :integer
#  user_id(Sender) :bigint
#
# Indexes
#
#  index_notifications_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :notification do
    
  end
end
