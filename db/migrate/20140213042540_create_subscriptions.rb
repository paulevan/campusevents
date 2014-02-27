class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions, :id => false do |t|
      t.integer :event_id
      t.integer :attendee_id

      t.timestamps
    end
  end
end
