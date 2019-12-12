class CreateImages < ActiveRecord::Migration[6.0]
  def up
    create_table :images do |t|
      t.string :path, null: false
      t.references :owner, polymorphic: true

      t.timestamps
    end
  end

  def down
    drop_table :images
  end
end
