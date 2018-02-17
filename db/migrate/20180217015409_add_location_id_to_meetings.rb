class AddLocationIdToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :location_id, :integer
  end
end
