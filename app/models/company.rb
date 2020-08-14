# == Schema Information
#
# Table name: companies
#
#  id                             :bigint           not null, primary key
#  address                        :string(255)
#  avarage_age(従業員平均年齢)    :integer
#  capital(資本金)                :integer
#  emp_number(従業員数)           :integer
#  foundation_date(設立年月)      :datetime
#  mission(企業ミッション)        :string(255)
#  mission_detail(ミッション詳細) :text(65535)
#  name                           :string(255)      not null
#  overview(会社概要)             :text(65535)
#  phone                          :string(255)
#  prefecture                     :string(255)
#  slogan(企業スローガン)         :string(255)
#  status                         :string(255)      not null
#  url                            :text(65535)
#  zip                            :string(255)
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

class Company < ApplicationRecord
  extend Enumerize
  enumerize :status, in: [:active, :stop, :applying, :ban], default: :active
end
