class CreateImages < ActiveRecord::Migration[6.0]
  def change
		create_table :images do |t|
			t.string :file_name, null: false
    end
  end
end
