class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :login, null: false, unique: true
      t.string :password, null: false
      t.string :email, null: false, unique: true
      t.string :phone_number
      t.string :name, null: false

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
