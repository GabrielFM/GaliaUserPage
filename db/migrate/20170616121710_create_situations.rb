class CreateSituations < ActiveRecord::Migration[5.0]
  def change
    create_table :situations do |t|
      t.integer :temp
      t.integer :umidity
      t.boolean :pump
      t.integer :lum
      t.integer :water_level

      t.timestamps
    end
  end
end
