# == Schema Information
#
# Table name: teches
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teches_on_slug  (slug) UNIQUE
#

require 'test_helper'

class TechTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
