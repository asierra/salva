class AddCareerIdToTheses < ActiveRecord::Migration[6.1]
  def self.up
    add_column :theses, :career_id, :integer
  end

  def self.down
    remove_column :theses, :career_id
  end
end
