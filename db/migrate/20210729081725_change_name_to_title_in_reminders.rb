class ChangeNameToTitleInReminders < ActiveRecord::Migration[6.1]
  def change
    rename_column :reminders, :name, :title
  end
end
