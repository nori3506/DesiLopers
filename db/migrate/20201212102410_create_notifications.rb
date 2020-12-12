class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :title
      t.integer :source_id, nil: false
      t.string :type, nil: false
      t.boolean :is_read, nil: false, default: false
      t.timestamps
    end
  end
end
