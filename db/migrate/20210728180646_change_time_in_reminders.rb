class ChangeTimeInReminders < ActiveRecord::Migration[6.1]
  def change
    rename_column :reminders, :time, :start_time
    add_column :reminders, :end_time, :datetime
    add_column :reminders, :all_day, :boolean
  end
end
