class CreateChannelUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :channel_users do |t|
      t.references :channel, foreign_key: true
      t.integer :source_id, nil: false
      t.string :type, nil: false

      t.timestamps
    end
  end
end
