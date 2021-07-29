class AddNotificationTimeToReminders < ActiveRecord::Migration[6.1]
  def change
    add_column :reminders, :notification_time, :datetime
  end
end
