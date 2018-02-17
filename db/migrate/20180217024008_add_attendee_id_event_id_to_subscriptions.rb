class AddAttendeeIdEventIdToSubscriptions < ActiveRecord::Migration[5.1]
  def change
    add_column :subscriptions, :attendee_id, :integer
    add_column :subscriptions, :event_id, :integer
  end
end
