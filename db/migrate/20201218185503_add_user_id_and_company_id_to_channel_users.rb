class AddUserIdAndCompanyIdToChannelUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :channel_users, :user, after: :channel_id, comment: "sender user", foreign_key: true, null: true, default: nil
    add_reference :channel_users, :company, after: :user_id, comment: "sender company", foreign_key: true, null: true, default: nil
  end
end
