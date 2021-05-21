class CreateLevelRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :level_ranges do |t|
      t.string :range
      t.integer :number_of_bosses

      t.timestamps
    end
  end
end
