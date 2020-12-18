class RemoveSourceIdFromChannelUsers < ActiveRecord::Migration[6.0]
  def up
    remove_column :channel_users, :source_id
    remove_column :channel_users, :type
  end

  def down
    add_column :channel_users, :source_id, :integer
    add_column :channel_users, :type, :string
  end
end
