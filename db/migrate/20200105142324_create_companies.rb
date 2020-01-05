class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name,      null: false
      t.string :status,    null: false
      t.string :phone
      t.string :zip
      t.string :prefecture
      t.string :address

      t.timestamps
    end
  end
end
