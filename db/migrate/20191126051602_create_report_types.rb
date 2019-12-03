class CreateReportTypes < ActiveRecord::Migration[6.0]
  def up
    create_table :report_types do |t|
      t.string :name, unique: true, null: false

      t.timestamps
    end
  end

  def down
    drop_table :report_types
  end
end
