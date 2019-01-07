class AddCareeryearToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :career_year, :string
  end
end
