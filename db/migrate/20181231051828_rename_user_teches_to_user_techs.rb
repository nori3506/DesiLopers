class RenameUserTechesToUserTechs < ActiveRecord::Migration[5.2]
  def change
    rename_table :user_teches, :user_techs
  end
end
