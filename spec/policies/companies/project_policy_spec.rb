require 'rails_helper'

RSpec.describe Companies::ProjectPolicy do
	let(:company) { create(:company) }
	let(:user) { create(:user, company: company) }
	let(:normal_user) { create(:user, company: nil)}

	subject { described_class }

	describe "GET /companies/projects/new 新規求人登録画面へのアクセス" do
		context "[正常系]comapny_userの場合" do
			permissions :new? do
				it { expect(subject).to permit(user, [:companies, Project])}
			end
		end

		context "[異常系]一般ユーザーの場合" do
			permissions :new? do
				it { expect(subject).not_to permit(normal_user, [:companies, Project])}
			end
		end
	end	
end
