class CreateUserJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_jobs do |t|
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
