class RemoveIndexFromInterests < ActiveRecord::Migration[6.0]
  def up
    remove_index :interests, name: :index_interests_on_user_id_and_project_id
  end

  def down
    add_index :interests, ["user_id", "project_id"], unique: true
  end
end
