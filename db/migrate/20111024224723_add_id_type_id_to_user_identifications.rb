class AddIdTypeIdToUserIdentifications < ActiveRecord::Migration[6.1]
  def self.up
    add_column :user_identifications, :idtype_id, :integer
  end

  def self.down
    remove_column :user_identifications, :idtype_id
  end
end
