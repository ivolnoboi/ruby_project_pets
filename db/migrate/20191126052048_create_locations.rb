class CreateLocations < ActiveRecord::Migration[6.0]
  def up
    create_table :locations do |t|
      t.string :city, null: false
      t.string :district
      t.string :street, null: false
      t.string :house, null: false
      t.string :flat

      t.timestamps
    end
  end

  def down
    drop_table :locations
  end
end
