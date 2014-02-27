class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name, null: false
      t.string :url
      t.string :logo

      t.timestamps
    end
  end
end
