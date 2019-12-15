# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  admin           :boolean          default(FALSE), not null
#  age             :string(255)
#  area            :string(255)
#  career_year     :string(255)
#  email           :string(255)
#  gender          :string(255)
#  hobby           :string(255)
#  image           :string(255)
#  job_hunting     :boolean
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


FactoryBot.define do
  factory :user do
    name { 'nori' }
    age { '20' }
    area { 'Canada' }
    career_year { '30years' }
    email { 'nori@nori.nori' }
    gender { 'male' }
    hobby { 'football' }
    image { '' }
    job_hunting { true }
    password { 'password' }
  end
end
