class AddUserIdToSituations < ActiveRecord::Migration[5.0]
  def change
    add_column :situations, :user_id, :integer
  end
end
