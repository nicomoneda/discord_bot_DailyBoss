class CreateLoopPatterns < ActiveRecord::Migration[6.0]
  def change
    create_table :loop_patterns do |t|
      t.references :level_range, null: false, foreign_key: true

      t.timestamps
    end
  end
end
