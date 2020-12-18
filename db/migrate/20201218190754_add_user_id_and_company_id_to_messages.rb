class AddUserIdAndCompanyIdToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :user, after: :channel_id, comment: "sender user", foreign_key: true, null: true, default: nil
    add_reference :messages, :company, after: :user_id, comment: "sender company", foreign_key: true, null: true, default: nil
  end
end
