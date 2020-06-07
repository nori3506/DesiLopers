# == Schema Information
#
# Table name: jobs
#
#  id              :bigint           not null, primary key
#  name            :string(255)
#  sequence        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  job_category_id :bigint
#
# Indexes
#
#  index_jobs_on_job_category_id  (job_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (job_category_id => job_categories.id)
#
class Job < ApplicationRecord

end
