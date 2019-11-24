# == Schema Information
#
# Table name: tech_users
#
#  id      :bigint           not null, primary key
#  tech_id :integer
#  user_id :integer
#

class TechUser < ApplicationRecord
  belongs_to :user
  belongs_to :tech
end
