class AddIsVerifiedToTheses < ActiveRecord::Migration[6.1]
  def change
    add_column :theses, :is_verified, :boolean
  end
end
