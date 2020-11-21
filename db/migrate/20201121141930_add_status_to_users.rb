class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :status, :string, after: :company_id, comment: "Acount Status"
  end
end
