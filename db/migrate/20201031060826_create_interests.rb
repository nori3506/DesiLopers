class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.references :user, foreign_key: true, nil: false
      t.references :project, foreign_key: true, nil: false
      t.boolean :is_interest_by_user, default: true, comment: "interest by user"
      t.index ["user_id", "project_id"], unique: true
      t.timestamps
    end
  end
end
