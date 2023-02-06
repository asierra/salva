class AddBuildingToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :building_id, :integer
  end
end
