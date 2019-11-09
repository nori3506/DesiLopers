class RemoveuserFromPortfolios < ActiveRecord::Migration[5.2]
  def change
  	remove_column :portfolios, :user_id, :integer
  end
end
