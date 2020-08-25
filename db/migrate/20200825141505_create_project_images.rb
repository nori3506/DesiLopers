class CreateProjectImages < ActiveRecord::Migration[6.0]
  def change
    create_table :project_images do |t|
			t.references :project, foreign_key: true, nil: false
			t.references :image, foreign_key: true, nil: false
			t.string  "use_purpose"       , null: false, comment: 'type'

      t.index ["project_id", "image_id"], unique: true
      t.index   "use_purpose"

      t.timestamps
    end
  end
end
