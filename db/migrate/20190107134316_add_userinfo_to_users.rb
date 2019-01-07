class AddUserinfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :string
    add_column :users, :gender, :string
    add_column :users, :area, :string
    add_column :users, :job_hunting, :boolean
    add_column :users, :hobby, :string
  end
end
