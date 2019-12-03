class CreateReports < ActiveRecord::Migration[6.0]
  def up
    create_table :reports do |t|
      t.string :title, null: false
      t.text :content
      t.integer :report_type_id, null: false

      t.timestamps
    end
  end

  def down
    drop_table :reports
  end
end
