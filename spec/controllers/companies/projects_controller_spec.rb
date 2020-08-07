require 'rails_helper'

RSpec.describe Companies::ProjectsController, type: :controller do
	let(:company) { create(:company) }
	let(:company_user) { create(:user, company_id: company.id) }

	before do
		sign_in company_user
	end

	describe "GET /companies/projects/new" do
		context "#new" do
			subject { get :new }
			it { is_expected.to be_successful }
		end
	end

	describe "POST /companies/projects/:id" do
		context "[success]company_user can create new project" do
			let(:parameter) {
				{
					project: {
						title: "new sales position",
						company_id: company_user.company.id,
						status: :active,
						background: "no experience",
						allocation: "sales team",
						detail: "in charge of salse",
						requirement: "nothing really",
						benefit: "you will be able to sell something",
						min_salary: 1000000,
						max_salary: 2000000,
						number_of_hire: 2,
						process: "3 times interviews and performance test",
						place: "canada vancouver, Downtown",
						welfare: "10 days reflesh vacation"
					}
				}
			}
			subject { post :create, params: parameter }
			it { expect { subject }.to change(Project, :count).by(1) }
			it { is_expected.to redirect_to(companies_home_index_path) }
		end
	end

	describe "GET /companies/projects/:id/edit" do
		context "#edit" do
			let(:project) { create(:project, company_id: company.id) }
			subject { get :edit, params: { id: project.to_param } }
			it { is_expected.to be_successful }
		end
	end

	describe "PATCH /companies/project/:id" do
		context "#update" do
			let(:project) { create(:project, company_id: company.id) }
			let(:parameter) {
				{
					id: project.to_param,
					project: {
						title: "new sales position",
						company_id: company_user.company.id,
						status: :active,
						background: "no experience",
						allocation: "sales team",
						detail: "in charge of salse",
						requirement: "nothing really",
						benefit: "you will be able to sell something",
						min_salary: 1000000,
						max_salary: 2000000,
						number_of_hire: 2,
						process: "3 times interviews and performance test",
						place: "canada vancouver, Downtown",
						welfare: "10 days reflesh vacation"
					}
				}
			}
			subject { patch :update, params: parameter }
			it { is_expected.to redirect_to(companies_home_index_path) }
		end
	end

end
