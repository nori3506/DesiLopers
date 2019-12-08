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

require 'rails_helper'

RSpec.describe User, type: :model do
  # valid with name, email, and password
  it 'is valid with name, email, password' do
    user = User.new(
      name: 'Aaron',
      email: 'tester@example.com',
      password: 'dottle-nouveau-pavilion-tights-furze'
    )
    expect(user).to be_valid
  end
  # invalid without name
  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to_not include("can't be blank")
  end
end
