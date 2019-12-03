class CreateBreeds < ActiveRecord::Migration[6.0]
  def up
    create_table :breeds do |t|
      t.string :name, unique: true, null: false

      t.timestamps
    end
  end

  def down
    drop_table :breeds
  end
end
