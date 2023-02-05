class AddIpAddressToDocuments < ActiveRecord::Migration[6.1]
  def self.up
    add_column :documents, :ip_address, :string
  end

  def self.down
    remove_column :documents, :ip_address
  end
end
