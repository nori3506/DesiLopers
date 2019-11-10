class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :name, default: ""

      t.timestamps
    end
  end
end
