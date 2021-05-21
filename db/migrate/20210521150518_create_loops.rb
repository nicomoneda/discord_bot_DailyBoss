class CreateLoops < ActiveRecord::Migration[6.0]
  def change
    create_table :loops do |t|
      t.references :bosses, null: false, foreign_key: true
      t.references :level_ranges, null: false, foreign_key: true

      t.timestamps
    end
  end
end
