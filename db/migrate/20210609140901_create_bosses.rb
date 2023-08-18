class CreateBosses < ActiveRecord::Migration[6.0]
  def change
    create_table :bosses do |t|
      t.string :name
      t.string :location
      t.string :url_fr
      t.integer :first_encounter
      t.integer :second_encounter
      t.integer :third_encounter
      t.integer :first_modulox
      t.integer :second_modulox
      t.integer :third_modulox
      t.references :loop_pattern, null: false, foreign_key: true

      t.timestamps
    end
  end
end
