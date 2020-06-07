class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :job_category, foreign_key: true
      t.integer :sequence
      t.timestamps
    end
  end
end
