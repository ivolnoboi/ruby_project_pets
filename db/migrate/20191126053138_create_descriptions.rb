class CreateDescriptions < ActiveRecord::Migration[6.0]
  def up
    create_table :descriptions do |t|
      t.integer :breed_id, null: false
      t.string :sex, null: false
      t.string :color, null: false
      t.string :special_signs
      t.integer :age
      t.text :content

      t.timestamps
    end
  end

  def down
    drop_table :descriptions
  end
end
