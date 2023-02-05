class AddStatusDocumenttypes < ActiveRecord::Migration[6.1]
  def self.up
    add_column :documenttypes, :status, :boolean, :default => false
  end

  def self.down
    remove_column :documenttypes, :status
  end
end
