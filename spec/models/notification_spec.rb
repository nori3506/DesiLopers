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
require 'rails_helper'

RSpec.describe Notification, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
