class AddIsVerifiedToPublishers < ActiveRecord::Migration[6.1]
  def change
    add_column :publishers, :is_verified, :boolean
  end
end
