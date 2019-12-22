class CreatePets < ActiveRecord::Migration[6.0]
  def up
    create_table :pets do |t|
      t.string :name, null: false
      t.integer :type_pet_id, null: false
      t.integer :description_id, null: false
      t.integer :location_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end

  def down
    drop_table :pets
  end
end
