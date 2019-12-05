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
  #名前、メール、パスワードがあれば有効な状態であること
  it "is valid with name, email, password" do
    expect(FactoryBot.build(:user)).to be_valid
  end
  # 名がなければ無効な状態であること

  # メールアトレスがなければ無効な状態であること
  it "is invalid without an email address" do
    user = User.FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address"
  # ユーザーのフルネームを文字列として返すこと
  it "returns a user's full name as a string"

end
