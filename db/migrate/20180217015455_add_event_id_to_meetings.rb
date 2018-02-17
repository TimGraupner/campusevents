class AddEventIdToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :event_id, :integer
  end
end
