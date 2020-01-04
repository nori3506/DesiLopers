class AddBirthdayToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :birthday, :date, after: :age, comment: "誕生日" 
  end
end
