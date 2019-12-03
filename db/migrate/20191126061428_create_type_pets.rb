class CreateTypePets < ActiveRecord::Migration[6.0]
  def up
    create_table :type_pets do |t|
      t.string :pet_type, null: false, unique: true

      t.timestamps
    end
  end

  def down
    drop_table :type_pets
  end
end
