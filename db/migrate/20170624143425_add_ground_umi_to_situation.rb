class AddGroundUmiToSituation < ActiveRecord::Migration[5.0]
  def change
    add_column :situations, :ground_umi, :integer
  end
end
