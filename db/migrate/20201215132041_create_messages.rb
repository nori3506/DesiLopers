class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :channel, foreign_key: true
      t.integer :source_id, nil: false
      t.string :type, nil: false
      t.text :content
      t.boolean :is_read, nil: false, default: false

      t.timestamps
    end
  end
end
