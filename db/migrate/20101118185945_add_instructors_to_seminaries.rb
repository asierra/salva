class AddInstructorsToSeminaries < ActiveRecord::Migration[6.1]
  def self.up
    add_column :seminaries, :instructors, :string
  end

  def self.down
    remove_column :seminaries, :instructors
  end
end
