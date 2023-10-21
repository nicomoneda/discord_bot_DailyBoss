class CreateBosses < ActiveRecord::Migration[6.0]
  def change
    create_table :bosses do |t|
      t.string :name_fr
      t.string :location_fr
      t.string :url_fr
      t.string :name_en
      t.string :location_en
      t.string :url_en
      t.string :name_es
      t.string :location_es
      t.string :url_es
      t.string :name_pt
      t.string :location_pt
      t.string :url_pt
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
