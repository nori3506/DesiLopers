# == Schema Information
#
# Table name: interests
#
#  id                                    :bigint           not null, primary key
#  is_interest_by_user(interest by user) :boolean          default(TRUE)
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#  project_id                            :bigint
#  user_id                               :bigint
#
# Indexes
#
#  index_interests_on_project_id              (project_id)
#  index_interests_on_user_id                 (user_id)
#  index_interests_on_user_id_and_project_id  (user_id,project_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#  fk_rails_...  (user_id => users.id)
#
class Interest < ApplicationRecord
end
