class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.string :school_name
      t.string :department
      t.text :activity
      t.text :url
      t.datetime :graduated_at

      t.timestamps
    end
  end
end
