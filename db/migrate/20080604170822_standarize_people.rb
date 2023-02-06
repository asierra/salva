class StandarizePeople < ActiveRecord::Migration[6.1]
  def self.up
      add_column :people, :id, :serial;
  end
  def self.down
    remove_column :people, :id
  end
end
