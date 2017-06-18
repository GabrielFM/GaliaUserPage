class AddGaliaIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :galia_id, :integer
  end
end
