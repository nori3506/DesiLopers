class Deleteusertech < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_techs
  end
end
