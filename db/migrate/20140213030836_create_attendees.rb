class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false

      t.timestamps
    end
  end
end
