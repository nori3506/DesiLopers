# frozen_string_literal: true

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
