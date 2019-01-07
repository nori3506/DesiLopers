class RenameTypeColumnToPortfolio < ActiveRecord::Migration[5.2]
  def change
    rename_column :portfolios, :type, :career
  end
end
