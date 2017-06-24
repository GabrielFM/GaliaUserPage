class AddUserIdToParameter < ActiveRecord::Migration[5.0]
  def change
    add_column :parameters, :user_id, :integer
  end
end
