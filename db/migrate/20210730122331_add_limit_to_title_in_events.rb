class AddLimitToTitleInEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :title, :string, :limit => 30
  end
end
