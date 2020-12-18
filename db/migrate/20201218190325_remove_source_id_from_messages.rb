class RemoveSourceIdFromMessages < ActiveRecord::Migration[6.0]
  def up
    remove_column :messages, :source_id
    remove_column :messages, :type
  end

  def down
    add_column :messages, :source_id, :integer
    add_column :messages, :type, :string
  end
end
