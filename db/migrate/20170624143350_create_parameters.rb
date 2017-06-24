class CreateParameters < ActiveRecord::Migration[5.0]
  def change
    create_table :parameters do |t|
      t.string :name
      t.integer :temp_min
      t.integer :temp_max
      t.integer :umidity_min
      t.integer :umidity_max
      t.integer :ground_umi_max
      t.integer :ground_umi_min
      t.integer :lum_max
      t.integer :lum_min
      t.integer :water_level_min

      t.timestamps
    end
  end
end
