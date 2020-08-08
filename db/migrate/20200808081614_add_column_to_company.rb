class AddColumnToCompany < ActiveRecord::Migration[6.0]
	def change
		add_column :companies, :slogan, :string, after: :status, comment: "企業スローガン"
		add_column :companies, :mission, :string, after: :slogan, comment: "企業ミッション"
		add_column :companies, :mission_detail, :text, after: :mission, comment: "ミッション詳細"
		add_column :companies, :overview, :text, after: :mission_detail, comment: "会社概要"
		add_column :companies, :URL, :text, after: :overview, comment: "会社HP URL"
		add_column :companies, :emp_number, :integer, after: :address, comment: "従業員数"
		add_column :companies, :avarage_age, :integer, after: :emp_number, comment: "従業員平均年齢"
		add_column :companies, :capital, :integer, after: :avarage_age, comment: "資本金"
		add_column :companies, :foundation_date, :datetime, after: :capital, comment: "設立年月"
  end
end
