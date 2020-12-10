class CreateUserProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :user_projects do |t|
      t.references :user, foreign_key: true, nil: false
      t.references :project, foreign_key: true, nil: false
      t.string :status, default: "processing", comment: "selection status"
      t.index ["user_id", "project_id"], unique: true
      t.timestamps
    end
  end
end
