class AddEventIdToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :event_id, :integer
    add_index :meetings, :event_id
  end
end
