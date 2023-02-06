class AddIsVerifiedToJournals < ActiveRecord::Migration[6.1]
  def change
    add_column :journals, :is_verified, :boolean
  end
end
