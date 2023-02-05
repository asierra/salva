class AddCareerToIndivadvices < ActiveRecord::Migration[6.1]
  def self.up
    add_column :indivadvices, :career_id, :integer
  end

  def self.down
    remove_column :indivadvices, :career_id
  end
end
