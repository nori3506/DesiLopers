# == Schema Information
#
# Table name: samples
#
#  id         :bigint           not null, primary key
#  name       :string(255)      default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sample < ApplicationRecord
end
