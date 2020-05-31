class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.references :user, foreign_key: true
      t.string :company_name
      t.string :category
      t.text :detail
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :is_working
      t.integer :salary
      t.text :url
    end
  end
end
