class CreateEvents < ActiveRecord::Migration[6.0]
  def up
    create_table :events do |t|
      t.integer :image_id, null: false
      t.string :title, null: false
      t.timestamp :event_date, null: false
      t.integer :user_id, null: false
      t.integer :location_id, null: false
      t.text :event_description, null: false

      t.timestamps
    end
  end

  def down
    drop_table :events
  end
end
