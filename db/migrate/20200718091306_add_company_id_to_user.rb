class AddCompanyIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :company, after: :email, comment: "企業ID", foreign_key: true, null: true, default: nil
  end
end
