class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :value
      t.boolean :inline

      t.timestamps
    end
  end
end
