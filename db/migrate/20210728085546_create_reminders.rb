class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.string :name, limit: 30
      t.string :color
      t.datetime :time

      t.timestamps
    end
  end
end
