class RenameUrlColumnToCompanies < ActiveRecord::Migration[6.0]
	def change
		rename_column :companies, :URL, :url
  end
end
