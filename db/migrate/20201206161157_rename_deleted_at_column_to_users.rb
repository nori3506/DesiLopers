class RenameDeletedAtColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :deleted_at, :discarded_at
  end
end
