class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.integer :type
      t.text :experience
      t.text :message
      t.text :first_site
      t.string :first_image
      t.text :second_site
      t.string :second_image
      t.text :third_site
      t.string :third_image

      t.timestamps
    end
  end
end
