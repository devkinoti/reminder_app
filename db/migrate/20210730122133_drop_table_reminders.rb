class DropTableReminders < ActiveRecord::Migration[6.1]
  def change
    drop_table :reminders do |t|
      t.string :name
      t.datetime :time
      t.string :color

      t.timestamps
    end
  end
end
