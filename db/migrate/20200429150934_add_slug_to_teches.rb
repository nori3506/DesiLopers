class AddSlugToTeches < ActiveRecord::Migration[6.0]
  def change
    add_column :teches, :slug, :string
    add_index :teches, :slug, unique: true
  end
end
