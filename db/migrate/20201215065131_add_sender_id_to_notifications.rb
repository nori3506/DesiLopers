class AddSenderIdToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :notifications, :user, after: :type, comment: "Sender", foreign_key: true, null: true, default: nil
  end
end
