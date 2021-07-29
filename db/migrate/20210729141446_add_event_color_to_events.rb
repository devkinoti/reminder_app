class AddEventColorToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :event_color, :string
  end
end
