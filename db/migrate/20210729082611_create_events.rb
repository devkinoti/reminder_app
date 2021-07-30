class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.boolean :all_day
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end