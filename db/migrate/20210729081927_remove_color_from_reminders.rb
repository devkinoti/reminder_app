class RemoveColorFromReminders < ActiveRecord::Migration[6.1]
  def up
    remove_column :reminders, :color
  end

  def down
    add_column :reminders, :color, :string
  end
end
