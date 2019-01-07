class CreateTechUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_users do |t|
      t.integer :user_id
      t.integer :tech_id
    end
  end
end
