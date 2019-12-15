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

FactoryBot.define do
  factory :portfolio do
    career { 'Developer' }
    experience { 'working for IT company for 20 years' }
    first_site { 'http://localhost:3000/portfolios/new' }
    message { 'Hi, I am passionated to code ruby' }
    user_id { 1 }
  end
end
