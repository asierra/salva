class AddTitleToPeople < ActiveRecord::Migration[6.1]
  def self.up
    add_column :people, :title, :string
  end

  def self.down
    remove_column :people, :title
  end
end
