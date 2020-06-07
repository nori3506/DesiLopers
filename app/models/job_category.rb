# == Schema Information
#
# Table name: job_categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  sequence   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class JobCategory < ApplicationRecord

end
